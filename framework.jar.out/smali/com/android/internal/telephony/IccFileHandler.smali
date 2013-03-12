.class public abstract Lcom/android/internal/telephony/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;,
        Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;,
        Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BIG_BINARY_SIZE_DONE:I = 0x13

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_IMG_RECORD_SIZE_DONE:I = 0xd

.field private static final EVENT_GET_ITEM_SIZE_DONE:I = 0xb

.field private static final EVENT_GET_RECORD_INFO_DONE:I = 0x10

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_SIM_FILE_STATUS_DONE:I = 0x11

.field protected static final EVENT_GET_USIM_PB_CAPA_DONE:I = 0xf

.field private static final EVENT_READ_ADN_DONE:I = 0xc

.field protected static final EVENT_READ_BIG_BINARY_DONE:I = 0x14

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_IMG_RECORD_DONE:I = 0xe

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final EVENT_UPDATE_ADN_DONE:I = 0x12

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final MAX_SEC_SIM_DATA_STRING:I = 0xfd

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected mAid:Ljava/lang/String;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mIsDisposed:Z

.field protected final mParentCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "card"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 215
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mIsDisposed:Z

    .line 216
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    .line 217
    iput-object p2, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    .line 218
    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 219
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 485
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 484
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mIsDisposed:Z

    .line 225
    return-void
.end method

.method public getAdnLikesRecordInfo(ILandroid/os/Message;)V
    .locals 2
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 444
    const/16 v1, 0x10

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 447
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 448
    return-void
.end method

.method public getAdnLikesSimStatusInfo(ILandroid/os/Message;)V
    .locals 11
    .parameter "efid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 465
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 468
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 470
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    .line 1101
    sparse-switch p1, :sswitch_data_0

    .line 1127
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1110
    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    .line 1114
    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    .line 1116
    :sswitch_2
    const-string v0, "3F007F105F50"

    goto :goto_0

    .line 1124
    :sswitch_3
    const-string v0, "3F00"

    goto :goto_0

    .line 1101
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2f40 -> :sswitch_3
        0x2f41 -> :sswitch_3
        0x2f42 -> :sswitch_3
        0x2f43 -> :sswitch_3
        0x2f50 -> :sswitch_3
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
        0x6f4e -> :sswitch_0
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 298
    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 301
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 303
    return-void
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 2
    .parameter "onLoaded"

    .prologue
    .line 457
    const/16 v1, 0xf

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 460
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getUsimPBCapa(Landroid/os/Message;)V

    .line 461
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 54
    .parameter "msg"

    .prologue
    .line 496
    const/16 v46, 0x0

    .line 517
    .local v46, response:Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 519
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 520
    .local v34, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 521
    .local v42, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/internal/telephony/IccIoResult;

    .line 522
    .local v47, result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v46, v0

    .line 524
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v41

    .line 525
    .local v41, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v41, :cond_0

    .line 526
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1081
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v41           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v42           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v47           #result:Lcom/android/internal/telephony/IccIoResult;
    :catch_0
    move-exception v37

    .line 1082
    .local v37, exc:Ljava/lang/Exception;
    if-eqz v46, :cond_37

    .line 1083
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 531
    .end local v37           #exc:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 532
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v46, v0

    .line 533
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/internal/telephony/IccIoResult;

    .line 535
    .restart local v47       #result:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v41

    .line 536
    .restart local v41       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v41, :cond_0

    .line 537
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 542
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v41           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v47           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 543
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 544
    .restart local v42       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/internal/telephony/IccIoResult;

    .line 545
    .restart local v47       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v46, v0

    .line 547
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 548
    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 552
    :cond_1
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v41

    .line 553
    .restart local v41       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v41, :cond_2

    .line 554
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 558
    :cond_2
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v36, v0

    .line 560
    .local v36, data:[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v36, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v36, v4

    if-eq v3, v4, :cond_4

    .line 562
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 565
    :cond_4
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v45, v0

    .line 566
    .local v45, recordSize:[I
    const/4 v3, 0x0

    const/16 v4, 0xe

    aget-byte v4, v36, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v45, v3

    .line 567
    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-byte v4, v36, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v6, 0x3

    aget-byte v6, v36, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    aput v4, v45, v3

    .line 569
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget v4, v45, v4

    const/4 v6, 0x0

    aget v6, v45, v6

    div-int/2addr v4, v6

    aput v4, v45, v3

    .line 571
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 575
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v36           #data:[B
    .end local v41           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v42           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v45           #recordSize:[I
    .end local v47           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 576
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 577
    .restart local v42       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/internal/telephony/IccIoResult;

    .line 578
    .restart local v47       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v46, v0

    .line 580
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 581
    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 585
    :cond_5
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v41

    .line 587
    .restart local v41       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v41, :cond_6

    .line 588
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 592
    :cond_6
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v36, v0

    .line 593
    .restart local v36       #data:[B
    move-object/from16 v0, v42

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 594
    .local v5, fileid:I
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v44, v0

    .line 596
    .local v44, recordNum:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v36, v4

    if-eq v3, v4, :cond_7

    .line 597
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 600
    :cond_7
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v36, v4

    if-eq v3, v4, :cond_8

    const/4 v3, 0x3

    const/16 v4, 0xd

    aget-byte v4, v36, v4

    if-eq v3, v4, :cond_8

    .line 601
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 604
    :cond_8
    const/16 v3, 0xe

    aget-byte v3, v36, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v42

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 606
    const/4 v3, 0x2

    aget-byte v3, v36, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v36, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 609
    .local v9, size:I
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v9, v3

    move-object/from16 v0, v42

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 611
    move-object/from16 v0, v42

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_9

    .line 612
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v42

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 615
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v42

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .end local v5           #fileid:I
    move-object/from16 v0, v42

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v42

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v42

    iget v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .end local v9           #size:I
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v13, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 622
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v36           #data:[B
    .end local v41           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v42           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v44           #recordNum:I
    .end local v47           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 623
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v46, v0

    .line 624
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/internal/telephony/IccIoResult;

    .line 626
    .restart local v47       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_a

    .line 627
    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 631
    :cond_a
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v41

    .line 633
    .restart local v41       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v41, :cond_b

    .line 634
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 638
    :cond_b
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v36, v0

    .line 640
    .restart local v36       #data:[B
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 642
    .restart local v5       #fileid:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v36, v4

    if-eq v3, v4, :cond_c

    .line 643
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 646
    :cond_c
    const/16 v3, 0xd

    aget-byte v3, v36, v3

    if-eqz v3, :cond_d

    .line 647
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 650
    :cond_d
    const/4 v3, 0x2

    aget-byte v3, v36, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v36, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 653
    .restart local v9       #size:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v13, 0x5

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v46

    invoke-virtual {v0, v13, v5, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 663
    .end local v5           #fileid:I
    .end local v9           #size:I
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v36           #data:[B
    .end local v41           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v47           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 664
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;

    .line 665
    .local v50, tc:Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/internal/telephony/IccIoResult;

    .line 666
    .restart local v47       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v46, v0

    .line 668
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_e

    .line 669
    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 673
    :cond_e
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v41

    .line 675
    .restart local v41       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v41, :cond_f

    .line 676
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 680
    :cond_f
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v36, v0

    .line 681
    .restart local v36       #data:[B
    move-object/from16 v0, v50

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->efid:I

    .line 683
    .restart local v5       #fileid:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v36, v4

    if-eq v3, v4, :cond_10

    .line 684
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 687
    :cond_10
    const/16 v3, 0xd

    aget-byte v3, v36, v3

    if-eqz v3, :cond_11

    .line 688
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 692
    :cond_11
    const/4 v3, 0x2

    aget-byte v3, v36, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v36, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 697
    .restart local v9       #size:I
    const/4 v3, 0x0

    move-object/from16 v0, v50

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    .line 698
    move-object/from16 v0, v50

    iput v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->binSize:I

    .line 699
    div-int/lit16 v3, v9, 0xfd

    move-object/from16 v0, v50

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->countPhases:I

    .line 700
    const/16 v3, 0xfd

    if-le v9, v3, :cond_12

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, v50

    iput-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->loadAll:Z

    .line 701
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v50

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->countPhases:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v50

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    .line 702
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v3, 0xfd

    if-le v9, v3, :cond_13

    const/16 v16, 0xfd

    :goto_2
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v3, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    move v12, v5

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 700
    :cond_12
    const/4 v3, 0x0

    goto :goto_1

    :cond_13
    move/from16 v16, v9

    .line 702
    goto :goto_2

    .line 713
    .end local v5           #fileid:I
    .end local v9           #size:I
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v36           #data:[B
    .end local v41           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v47           #result:Lcom/android/internal/telephony/IccIoResult;
    .end local v50           #tc:Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 714
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;

    .line 715
    .restart local v50       #tc:Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/internal/telephony/IccIoResult;

    .line 716
    .restart local v47       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v46, v0

    .line 718
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_14

    .line 719
    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 723
    :cond_14
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v41

    .line 725
    .restart local v41       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v41, :cond_15

    .line 726
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 730
    :cond_15
    move-object/from16 v0, v50

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->loadAll:Z

    if-nez v3, :cond_16

    .line 731
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 733
    :cond_16
    move-object/from16 v0, v50

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    move-object/from16 v0, v50

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v50

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    .line 738
    move-object/from16 v0, v50

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    move-object/from16 v0, v50

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->countPhases:I

    if-le v3, v4, :cond_18

    .line 739
    move-object/from16 v0, v50

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->binSize:I

    new-array v0, v3, [B

    move-object/from16 v48, v0

    .line 740
    .local v48, resultData:[B
    const/16 v40, 0x0

    .local v40, i:I
    :goto_3
    move-object/from16 v0, v50

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    move/from16 v0, v40

    if-ge v0, v3, :cond_17

    .line 741
    move-object/from16 v0, v50

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v51, v0

    .line 742
    .local v51, tempData:[B
    const/4 v3, 0x0

    move/from16 v0, v40

    mul-int/lit16 v4, v0, 0xfd

    move-object/from16 v0, v51

    array-length v6, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v48

    invoke-static {v0, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 740
    add-int/lit8 v40, v40, 0x1

    goto :goto_3

    .line 745
    .end local v51           #tempData:[B
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 747
    .end local v40           #i:I
    .end local v48           #resultData:[B
    :cond_18
    move-object/from16 v0, v50

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    mul-int/lit16 v3, v3, 0xfd

    shr-int/lit8 v14, v3, 0x8

    .line 748
    .local v14, iccIoP1:I
    move-object/from16 v0, v50

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    mul-int/lit16 v3, v3, 0xfd

    and-int/lit16 v15, v3, 0xff

    .line 750
    .local v15, IccIoP2:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb0

    move-object/from16 v0, v50

    iget v12, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->efid:I

    move-object/from16 v0, v50

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v50

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    move-object/from16 v0, v50

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->countPhases:I

    if-ge v3, v4, :cond_19

    const/16 v16, 0xfd

    :goto_4
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v3, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, v50

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->binSize:I

    move-object/from16 v0, v50

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    mul-int/lit16 v4, v4, 0xfd

    sub-int v16, v3, v4

    goto :goto_4

    .line 764
    .end local v14           #iccIoP1:I
    .end local v15           #IccIoP2:I
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v41           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v47           #result:Lcom/android/internal/telephony/IccIoResult;
    .end local v50           #tc:Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 765
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 766
    .restart local v42       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/internal/telephony/IccIoResult;

    .line 767
    .restart local v47       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v46, v0

    .line 769
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1a

    .line 770
    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 774
    :cond_1a
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v41

    .line 776
    .restart local v41       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v41, :cond_1b

    .line 777
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 781
    :cond_1b
    move-object/from16 v0, v42

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-nez v3, :cond_1c

    .line 782
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 784
    :cond_1c
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v42

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 788
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    if-le v3, v4, :cond_1d

    .line 789
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 791
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0xb2

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v18, v0

    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    invoke-interface/range {v16 .. v26}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 802
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v41           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v42           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v47           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 803
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 804
    .restart local v42       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/internal/telephony/IccIoResult;

    .line 805
    .restart local v47       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v46, v0

    .line 807
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1e

    .line 808
    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 812
    :cond_1e
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v41

    .line 814
    .restart local v41       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v41, :cond_1f

    .line 815
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 819
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_READ_IMG_RECORD_DONE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 821
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 826
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v41           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v42           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v47           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 827
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v46, v0

    .line 828
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/internal/telephony/IccIoResult;

    .line 830
    .restart local v47       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_20

    .line 831
    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 835
    :cond_20
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v41

    .line 837
    .restart local v41       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v41, :cond_21

    .line 838
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 842
    :cond_21
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 849
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v41           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v47           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_a
    const/16 v52, 0x0

    .line 850
    .local v52, total:I
    const/16 v53, 0x0

    .line 851
    .local v53, used:I
    const/16 v39, 0x0

    .line 853
    .local v39, firstIndex:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 856
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_22

    .line 867
    :goto_5
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;

    .line 868
    .local v43, pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v46, v0

    .line 871
    move/from16 v0, v53

    move-object/from16 v1, v43

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    .line 872
    move/from16 v0, v39

    move-object/from16 v1, v43

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 874
    const/4 v3, 0x0

    move-object/from16 v0, v43

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 876
    if-nez v53, :cond_23

    .line 882
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v43

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 883
    move-object/from16 v0, v43

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 859
    .end local v43           #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    :cond_22
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v52, v3, v4

    .line 860
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x1

    aget v53, v3, v4

    .line 861
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x2

    aget v39, v3, v4

    goto :goto_5

    .line 887
    .restart local v43       #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    :cond_23
    move-object/from16 v0, v43

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    if-eqz v3, :cond_24

    .line 889
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v43

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 892
    :cond_24
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v43

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0xb2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v18, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-interface/range {v16 .. v21}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 900
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v39           #firstIndex:I
    .end local v43           #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    .end local v52           #total:I
    .end local v53           #used:I
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 901
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;

    .line 903
    .restart local v43       #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Lcom/android/internal/telephony/SimPBEntryResult;

    .line 904
    .local v49, resultPB:Lcom/android/internal/telephony/SimPBEntryResult;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v46, v0

    .line 909
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_25

    .line 910
    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 913
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pblc EFID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "record number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "total record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Used Record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "count record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 915
    move-object/from16 v0, v43

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    if-nez v3, :cond_26

    .line 916
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 917
    .local v21, emails:[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v49

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    aput-object v4, v21, v3

    .line 920
    new-instance v16, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v17, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    move/from16 v18, v0

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v19, v3, v4

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v20, v3, v4

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v22, v3, v4

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v23, v3, v4

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v24, v3, v4

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v25, v3, v4

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v26, v3, v4

    invoke-direct/range {v16 .. v26}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .local v16, adn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 923
    .end local v16           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v21           #emails:[Ljava/lang/String;
    :cond_26
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 924
    .restart local v21       #emails:[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v49

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    aput-object v4, v21, v3

    .line 927
    new-instance v16, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v17, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    move/from16 v18, v0

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v19, v3, v4

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v20, v3, v4

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v22, v3, v4

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v23, v3, v4

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v24, v3, v4

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v25, v3, v4

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v26, v3, v4

    invoke-direct/range {v16 .. v26}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    .restart local v16       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v43

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    move-object/from16 v0, v49

    iget v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    move-object/from16 v0, v43

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 931
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    if-eq v3, v4, :cond_27

    move-object/from16 v0, v49

    iget v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    const v4, 0xffff

    if-ne v3, v4, :cond_28

    .line 932
    :cond_27
    move-object/from16 v0, v43

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 934
    :cond_28
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v43

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    const/16 v23, 0xb2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v24, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    move/from16 v25, v0

    const/16 v26, 0x0

    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v27

    invoke-interface/range {v22 .. v27}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 944
    .end local v16           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v21           #emails:[Ljava/lang/String;
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v43           #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    .end local v49           #resultPB:Lcom/android/internal/telephony/SimPBEntryResult;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 945
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 946
    .restart local v42       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/internal/telephony/IccIoResult;

    .line 947
    .restart local v47       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v46, v0

    .line 949
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_29

    .line 950
    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 954
    :cond_29
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v41

    .line 956
    .restart local v41       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v41, :cond_2a

    .line 957
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 961
    :cond_2a
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v36, v0

    .line 962
    .restart local v36       #data:[B
    move-object/from16 v0, v42

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 963
    .restart local v5       #fileid:I
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v44, v0

    .line 965
    .restart local v44       #recordNum:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v36, v4

    if-eq v3, v4, :cond_2b

    .line 966
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 969
    :cond_2b
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v36, v4

    if-eq v3, v4, :cond_2c

    .line 970
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 973
    :cond_2c
    const/16 v3, 0xe

    aget-byte v3, v36, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v42

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 975
    const/4 v3, 0x2

    aget-byte v3, v36, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v36, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 978
    .restart local v9       #size:I
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v9, v3

    move-object/from16 v0, v42

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 980
    move-object/from16 v0, v42

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_2d

    .line 981
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v42

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 984
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    const/16 v23, 0xb2

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v24, v0

    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v3, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-interface/range {v22 .. v32}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 992
    .end local v5           #fileid:I
    .end local v9           #size:I
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v36           #data:[B
    .end local v41           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v42           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v44           #recordNum:I
    .end local v47           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 993
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v46, v0

    .line 995
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2e

    .line 996
    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1000
    :cond_2e
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v35, v0

    .line 1001
    .local v35, capaResult:[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1006
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v35           #capaResult:[I
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 1007
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v46, v0

    .line 1008
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v38, v0

    .line 1009
    .local v38, fileStatus:[I
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2f

    .line 1010
    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1014
    :cond_2f
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/internal/telephony/IccIoResult;

    .line 1016
    .restart local v47       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_30

    .line 1017
    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1021
    :cond_30
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v41

    .line 1023
    .restart local v41       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v41, :cond_31

    .line 1024
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1028
    :cond_31
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v36, v0

    .line 1030
    .restart local v36       #data:[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v36, v4

    if-eq v3, v4, :cond_32

    .line 1031
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1034
    :cond_32
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v36, v4

    if-eq v3, v4, :cond_33

    const/4 v3, 0x3

    const/16 v4, 0xd

    aget-byte v4, v36, v4

    if-eq v3, v4, :cond_33

    .line 1035
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1037
    :cond_33
    const/4 v3, 0x0

    const/16 v4, 0xb

    aget-byte v4, v36, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v38, v3

    .line 1038
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1043
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v36           #data:[B
    .end local v38           #fileStatus:[I
    .end local v41           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v47           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 1044
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v46, v0

    .line 1046
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_34

    .line 1047
    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1051
    :cond_34
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v33, v0

    .line 1052
    .local v33, RecordInfo:[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1058
    .end local v33           #RecordInfo:[I
    .end local v34           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 1059
    .restart local v34       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 1060
    .restart local v42       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/internal/telephony/IccIoResult;

    .line 1061
    .restart local v47       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v46, v0

    .line 1063
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_35

    .line 1064
    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1068
    :cond_35
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v41

    .line 1070
    .restart local v41       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v41, :cond_36

    .line 1071
    const-string v3, "getException not null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 1073
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1077
    :cond_36
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1085
    .end local v34           #ar:Landroid/os/AsyncResult;
    .end local v41           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v42           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v47           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v37       #exc:Ljava/lang/Exception;
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 11
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 258
    const/16 v0, 0x9

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 263
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "img"

    const/4 v5, 0x4

    const/16 v6, 0xa

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 266
    return-void
.end method

.method public loadEFImgLinearFixedSTK(ILandroid/os/Message;)V
    .locals 11
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 278
    const/16 v0, 0xd

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 283
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "img"

    const/4 v5, 0x4

    const/16 v6, 0xa

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 286
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 12
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    .line 360
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 363
    .local v11, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb0

    const-string v4, "img"

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 365
    return-void
.end method

.method public loadEFImgTransparentSTK(IIIILandroid/os/Message;)V
    .locals 12
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    .line 379
    const/4 v1, 0x4

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 381
    .local v11, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc0

    const-string v4, "img"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 384
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 240
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 244
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 246
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 315
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 318
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 320
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 340
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 343
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 346
    return-void
.end method

.method loadItemInPhoneBookStorageAll(ILandroid/os/Message;)V
    .locals 3
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 428
    const/16 v1, 0xb

    new-instance v2, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 431
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 432
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected setAid(Ljava/lang/String;)V
    .locals 0
    .parameter "aid"

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    .line 1136
    return-void
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 397
    const/16 v1, 0x12

    new-instance v2, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    move-object/from16 v0, p5

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 400
    .local v11, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xdc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    array-length v7, p3

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move-object/from16 v9, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 403
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x0

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v10, p3

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 414
    return-void
.end method
