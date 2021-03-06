/*
 * vdmaTest.c
 *
 *  Created on: Apr 9, 2020
 *      Author: VIPIN
 */
#include "xparameters.h"
#include "xaxivdma.h"
#include "xscugic.h"
#include <stdlib.h>
#include <stdio.h>
#include "imageProcess.h"
#include "A.h"
#include "C.h"
#include "D.h"
#include "E.h"
#include "O.h"
#include "sleep.h"

#define HSize 1920
#define VSize 1080
#define FrameSize HSize*VSize*3

#define imgHSize 1920
#define imgVSize 1080
#define imageSize imgHSize*imgVSize


//char imageData[] = {

int initIntrController(XScuGic *Intc);
static int SetupVideoIntrSystem(XAxiVdma *AxiVdmaPtr, u16 ReadIntrId, XScuGic *Intc);

char Buffer[FrameSize];

int main(){
	XScuGic Intc;
	initIntrController(&Intc);
	int status;
	imgProcess myImgProcess;
	char *filteredImage;
	filteredImage = malloc(sizeof(char)*(imageSize)*3);

	myImgProcess.imageDataPointer1 = imageDataA;
	myImgProcess.imageDataPointer2 = imageDataC;
	myImgProcess.imageDataPointer3 = imageDataD;
	myImgProcess.imageDataPointer4 = imageDataE;
	myImgProcess.imageDataPointer5 = imageDataO;
	myImgProcess.imageHSize = imgHSize;
	myImgProcess.imageVSize = imgVSize;
	myImgProcess.filteredImageDataPointer = filteredImage;


	initImgProcessSystem(&myImgProcess, (u32)XPAR_AXI_DMA_0_BASEADDR, &Intc);
	//print("aaa\n");
	startImageProcessing(&myImgProcess);
	//print("bbb\n");

    while(!myImgProcess.done){
    	//print("fff\n");
    }
	/*imgProcess myImgProcess2;
	char *filteredImage2;
	filteredImage2 = malloc(sizeof(char)*(imageSize));

    myImgProcess2.imageDataPointer = imageData2;
    myImgProcess2.imageHSize = imgHSize;
    myImgProcess2.imageVSize = imgVSize;
    myImgProcess2.filteredImageDataPointer = filteredImage2;

    myImgProcess2.DmaCtrlPointer  =	myImgProcess.DmaCtrlPointer;
    myImgProcess2.IntrCtrlPointer =	myImgProcess.IntrCtrlPointer;
    myImgProcess2.done = 0;
    myImgProcess2.row  = 4;
	//initImgProcessSystem(&myImgProcess2, (u32)XPAR_AXI_DMA_0_BASEADDR, &Intc);
	startImageProcessing(&myImgProcess2);
    while(!myImgProcess2.done){
    	//print("fff\n");
    }*/

	int Index;
	int choice;
	u32 Addr;

	XAxiVdma myVDMA;
	XAxiVdma_Config *config = XAxiVdma_LookupConfig(XPAR_AXI_VDMA_0_DEVICE_ID);
	XAxiVdma_DmaSetup ReadCfg;
	status = XAxiVdma_CfgInitialize(&myVDMA, config, config->BaseAddress);
    if(status != XST_SUCCESS){
    	xil_printf("DMA Initialization failed");
    }
    ReadCfg.VertSizeInput = VSize;
    ReadCfg.HoriSizeInput = HSize*3;
    ReadCfg.Stride = HSize*3;
    ReadCfg.FrameDelay = 0;
    ReadCfg.EnableCircularBuf = 1;
    ReadCfg.EnableSync = 1;
    ReadCfg.PointNum = 0;
    ReadCfg.EnableFrameCounter = 0;
    ReadCfg.FixedFrameStoreAddr = 0;
    status = XAxiVdma_DmaConfig(&myVDMA, XAXIVDMA_READ, &ReadCfg);
    if (status != XST_SUCCESS) {
    	xil_printf("Write channel config failed %d\r\n", status);
    	return status;
    }

    Addr = (u32)&(Buffer[0]);


	for(Index = 0; Index < myVDMA.MaxNumFrames; Index++) {
		ReadCfg.FrameStoreStartAddr[Index] = Addr;
		Addr +=  FrameSize;
	}

	status = XAxiVdma_DmaSetBufferAddr(&myVDMA, XAXIVDMA_READ,ReadCfg.FrameStoreStartAddr);
	if (status != XST_SUCCESS) {
		xil_printf("Read channel set buffer address failed %d\r\n", status);
		return XST_FAILURE;
	}

	XAxiVdma_IntrEnable(&myVDMA, XAXIVDMA_IXR_COMPLETION_MASK, XAXIVDMA_READ);
	SetupVideoIntrSystem(&myVDMA, XPAR_FABRIC_AXI_VDMA_0_MM2S_INTROUT_INTR,&Intc);

	//print("eee\n");
	//printf("done = %d \n",myImgProcess.done);

    //print("ggg\n");
	status = XAxiVdma_DmaStart(&myVDMA,XAXIVDMA_READ);
	if (status != XST_SUCCESS) {
		if(status == XST_VDMA_MISMATCH_ERROR)
			xil_printf("DMA Mismatch Error\r\n");
		return XST_FAILURE;
	}
	// print("h\n");
	choice=0;
    while(1){
    	// print("i\n"); ///???????O????????
    	/*xil_printf("Enter your choice\n\r1.Original Image\n\r2.Sketched image\n\r");
    	xil_printf("3.Original Image\n\r4.Sketched image\n\r");*/
    	//scanf("%d",&choice);
    	sleep(1);
    	if(choice<8)
    		choice++;
    	else
    		choice=1;
    	switch(choice){
    	case 1:
    		drawImage(HSize,VSize,imgHSize,imgVSize,(HSize-imgHSize)/2,(VSize-imgVSize)/2,1,imageDataA,Buffer);
    		break;
    	case 2:
    		drawImage(HSize,VSize,imgHSize,imgVSize,(HSize-imgHSize)/2,(VSize-imgVSize)/2,1,filteredImage,Buffer);
			break;
    	case 3:
    		drawImage(HSize,VSize,imgHSize,imgVSize,(HSize-imgHSize)/2,(VSize-imgVSize)/2,1,imageDataC,Buffer);
			break;
    	case 4:
    		drawImage(HSize,VSize,imgHSize,imgVSize,(HSize-imgHSize)/2,(VSize-imgVSize)/2,1,filteredImage+(imageSize),Buffer);
			break;
    	case 5:
    		drawImage(HSize,VSize,imgHSize,imgVSize,(HSize-imgHSize)/2,(VSize-imgVSize)/2,1,imageDataD,Buffer);
			break;
    	case 6:
    		drawImage(HSize,VSize,imgHSize,imgVSize,(HSize-imgHSize)/2,(VSize-imgVSize)/2,1,filteredImage+(imageSize*2),Buffer);
			break;
    	case 7:
    		drawImage(HSize,VSize,imgHSize,imgVSize,(HSize-imgHSize)/2,(VSize-imgVSize)/2,1,imageDataE,Buffer);
			break;
    	case 8:
    		drawImage(HSize,VSize,imgHSize,imgVSize,(HSize-imgHSize)/2,(VSize-imgVSize)/2,1,filteredImage+(imageSize*3),Buffer);
			break;
    	/*case 9:
    		drawImage(HSize,VSize,imgHSize,imgVSize,(HSize-imgHSize)/2,(VSize-imgVSize)/2,1,imageDataO,Buffer);
			break;
    	case 10:
    		drawImage(HSize,VSize,imgHSize,imgVSize,(HSize-imgHSize)/2,(VSize-imgVSize)/2,1,filteredImage+(imageSize*4),Buffer);
			break;*/

    	default:
    		xil_printf("Wrong choice\n\t");
    		break;
    	}
    	sleep(1);
    }
}


/*****************************************************************************/
 /* Call back function for read channel
******************************************************************************/

static void ReadCallBack(void *CallbackRef, u32 Mask)
{
	/* User can add his code in this call back function */
	//xil_printf("Read Call back function is called\r\n");
}

/*****************************************************************************/
/*
 * The user can put his code that should get executed when this
 * call back happens.
 *
*
******************************************************************************/
static void ReadErrorCallBack(void *CallbackRef, u32 Mask)
{
	/* User can add his code in this call back function */
	xil_printf("Read Call back Error function is called\r\n");

}

int initIntrController(XScuGic *IntcInstancePtr){
	int Status;
	XScuGic_Config *IntcConfig;
	IntcConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	Status =  XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig, IntcConfig->CpuBaseAddress);
	if(Status != XST_SUCCESS){
		xil_printf("Interrupt controller initialization failed..");
		return -1;
	}

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,(Xil_ExceptionHandler)XScuGic_InterruptHandler,(void *)IntcInstancePtr);
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}


static int SetupVideoIntrSystem(XAxiVdma *AxiVdmaPtr, u16 ReadIntrId, XScuGic *Intc)
{
	int Status;
	XScuGic *IntcInstancePtr = Intc;

	Status = XScuGic_Connect(IntcInstancePtr,ReadIntrId,(Xil_InterruptHandler)XAxiVdma_ReadIntrHandler,(void *)AxiVdmaPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Failed read channel connect intc %d\r\n", Status);
		return XST_FAILURE;
	}

	XScuGic_Enable(IntcInstancePtr,ReadIntrId);

	XAxiVdma_SetCallBack(AxiVdmaPtr, XAXIVDMA_HANDLER_GENERAL, ReadCallBack, (void *)AxiVdmaPtr, XAXIVDMA_READ);

	XAxiVdma_SetCallBack(AxiVdmaPtr, XAXIVDMA_HANDLER_ERROR, ReadErrorCallBack, (void *)AxiVdmaPtr, XAXIVDMA_READ);

	return XST_SUCCESS;
}
