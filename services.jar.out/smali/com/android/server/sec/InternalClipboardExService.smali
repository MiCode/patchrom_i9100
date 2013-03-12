.class public Lcom/android/server/sec/InternalClipboardExService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;
    }
.end annotation


# static fields
.field private static sService:Landroid/content/IClipboard;


# instance fields
.field private final ADD_ITEM:I

.field private final MSG_DISMISS_DIALOG:I

.field private final MSG_SHOW_DIALOG:I

.field private final MSG_UPDATE_DIALOG:I

.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

.field private mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

.field private mClipboardFormatList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardFormatListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/IClipboardFormatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mContext:Landroid/content/Context;

.field private mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private mEnableFormatId:I

.field private final mHandler:Landroid/os/Handler;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 207
    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    .line 92
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 94
    iput-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 96
    new-instance v0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-direct {v0, p0, v5}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/InternalClipboardExService$1;)V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    .line 97
    iput v2, p0, Lcom/android/server/sec/InternalClipboardExService;->ADD_ITEM:I

    .line 646
    iput v2, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_SHOW_DIALOG:I

    .line 647
    iput v3, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_UPDATE_DIALOG:I

    .line 648
    iput v4, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_DISMISS_DIALOG:I

    .line 717
    new-instance v0, Lcom/android/server/sec/InternalClipboardExService$3;

    invoke-direct {v0, p0}, Lcom/android/server/sec/InternalClipboardExService$3;-><init>(Lcom/android/server/sec/InternalClipboardExService;)V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    .line 208
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    .line 211
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 213
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bitmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HTMLFlagment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sec/InternalClipboardExService;ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/sec/InternalClipboardExService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method private addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 10
    .parameter "format"
    .parameter "data"

    .prologue
    const/16 v9, 0x20

    .line 500
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ClipboardServiceEx"

    const-string v7, "addData.."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    const/4 v0, 0x0

    .line 503
    .local v0, Res:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {p0, p2}, Lcom/android/server/sec/InternalClipboardExService;->checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 504
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The data are the same.:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_1
    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_0
    move-object v1, v0

    .line 547
    .end local v0           #Res:Landroid/sec/clipboard/data/ClipboardData;
    .local v1, Res:Landroid/sec/clipboard/data/ClipboardData;
    :goto_1
    return-object v1

    .end local v1           #Res:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v0       #Res:Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_0
    move-object v5, p2

    .line 508
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 509
    .local v5, trgData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, imagePath:Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v6, "data/data/com.android.clipboardsaveservice/temp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 511
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "ClipboardServiceEx"

    const-string v7, "Delete intent will be called"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.clipboardsaveservice.CLIPBOARD_DELETE_RECEIVER"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v3, deleteIntent:Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 514
    const-string v6, "deletePath"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    iget-object v6, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 522
    .end local v3           #deleteIntent:Landroid/content/Intent;
    .end local v4           #imagePath:Ljava/lang/String;
    .end local v5           #trgData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :cond_4
    invoke-virtual {p2, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 524
    .local v2, addItem:Landroid/sec/clipboard/data/ClipboardData;
    iget-object v6, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->addData(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 526
    iget-object v6, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 527
    invoke-direct {p0, v0}, Lcom/android/server/sec/InternalClipboardExService;->updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 533
    :cond_5
    :goto_2
    packed-switch p1, :pswitch_data_1

    :cond_6
    :goto_3
    move-object v1, v0

    .line 547
    .end local v0           #Res:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v1       #Res:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_1

    .line 529
    .end local v1           #Res:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v0       #Res:Landroid/sec/clipboard/data/ClipboardData;
    :cond_7
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "ClipboardServiceEx"

    const-string v7, "Failed to add data."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    move-object v5, p2

    .line 535
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 536
    .restart local v5       #trgData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 537
    .restart local v4       #imagePath:Ljava/lang/String;
    if-eqz v4, :cond_6

    const-string v6, "data/data/com.android.clipboardsaveservice/temp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 538
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "ClipboardServiceEx"

    const-string v7, "Delete intent will be called"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.clipboardsaveservice.CLIPBOARD_DELETE_RECEIVER"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .restart local v3       #deleteIntent:Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 541
    const-string v6, "deletePath"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    iget-object v6, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 506
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 533
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method private checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 5
    .parameter "data"

    .prologue
    .line 381
    const/4 v1, 0x0

    .line 383
    .local v1, result:Z
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-gtz v3, :cond_0

    move v2, v1

    .line 394
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 386
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 388
    .local v0, latestData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 389
    .restart local v2       #result:I
    goto :goto_0

    .line 392
    .end local v2           #result:I
    :cond_1
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v2, v1

    .line 394
    .restart local v2       #result:I
    goto :goto_0
.end method

.method private dump()V
    .locals 5

    .prologue
    .line 793
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 794
    .local v1, size:I
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 796
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_2
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "ClipboardServiceEx"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_3
    return-void
.end method

.method private static getService()Landroid/content/IClipboard;
    .locals 3

    .prologue
    .line 776
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    if-eqz v1, :cond_0

    .line 777
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    .line 785
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 779
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 780
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    sput-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    .line 782
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    if-nez v1, :cond_1

    .line 783
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Original clipboard service is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_1
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    goto :goto_0
.end method

.method private sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v6, 0x2

    .line 572
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    if-ne v4, v6, :cond_1

    move-object v2, p1

    .line 573
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 575
    .local v2, txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :try_start_0
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 577
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "String was copied.(FORMAT_TEXT_ID)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .end local v2           #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_0
    :goto_0
    return-void

    .line 578
    .restart local v2       #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :catch_0
    move-exception v0

    .line 579
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 581
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_1
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 582
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 583
    .restart local v2       #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {p1, v6, v2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 585
    :try_start_1
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 588
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "String was copied.(FORMAT_HTML_FLAGMENT_ID)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 589
    :catch_1
    move-exception v0

    .line 590
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 592
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_2
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    move-object v3, p1

    .line 593
    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 595
    .local v3, uri:Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :try_start_2
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 598
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "String was copied.(FORMAT_URI_ID)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 600
    :catch_2
    move-exception v0

    .line 601
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 603
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #uri:Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_3
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    move-object v1, p1

    .line 604
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .line 606
    .local v1, intent:Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :try_start_3
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 609
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "String was copied.(FORMAT_INTENT_ID)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 611
    :catch_3
    move-exception v0

    .line 612
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 3
    .parameter "clip"

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 554
    :try_start_0
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "change list..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataListChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 563
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/sec/InternalClipboardExService;->ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V

    .line 565
    :cond_2
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, e:Landroid/os/RemoteException;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardServiceEx"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 318
    .local v0, Result:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_0
    return v0

    .line 317
    .end local v0           #Result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 7
    .parameter "format"

    .prologue
    const/4 v6, 0x1

    .line 350
    monitor-enter p0

    .line 351
    const/4 v0, 0x0

    .line 353
    .local v0, Result:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 354
    const/4 v3, 0x0

    monitor-exit p0

    .line 375
    :goto_0
    return-object v3

    .line 357
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    .line 359
    .local v2, iClipboardDataCount:I
    if-ge v2, v6, :cond_1

    .line 360
    monitor-exit p0

    move-object v3, v0

    goto :goto_0

    .line 363
    :cond_1
    const/4 v1, 0x0

    .line 364
    .local v1, cbData:Landroid/sec/clipboard/data/ClipboardData;
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 367
    if-eqz v1, :cond_3

    .line 368
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItem id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", input id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_2
    if-eq p1, v6, :cond_4

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    if-eq v3, p1, :cond_4

    .line 371
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 375
    :cond_3
    :goto_1
    monitor-exit p0

    move-object v3, v0

    goto :goto_0

    .line 373
    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 376
    .end local v1           #cbData:Landroid/sec/clipboard/data/ClipboardData;
    .end local v2           #iClipboardDataCount:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public GetClipboardFormatName(I)Ljava/lang/String;
    .locals 3
    .parameter "format"

    .prologue
    .line 296
    const-string v0, ""

    .line 298
    .local v0, Result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #Result:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 301
    .restart local v0       #Result:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public IsShowUIClipboardData()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, Result:Z
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->isShowing()Z

    move-result v0

    .line 668
    :cond_0
    return v0
.end method

.method public ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V
    .locals 4
    .parameter "format"
    .parameter "data"

    .prologue
    .line 238
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/IClipboardFormatListener;

    .line 240
    .local v0, Item:Landroid/sec/clipboard/IClipboardFormatListener;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/sec/clipboard/IClipboardFormatListener;->onNewClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 245
    .end local v0           #Item:Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .locals 2
    .parameter "iRegInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 629
    monitor-enter p0

    .line 630
    :try_start_0
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 632
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    .line 634
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    .line 639
    :cond_0
    :goto_0
    monitor-exit p0

    .line 640
    return-void

    .line 637
    :cond_1
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "RegistClipboardWorkingFormUiInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public RegisterClipboardFormat(Ljava/lang/String;)I
    .locals 7
    .parameter "formatName"

    .prologue
    .line 269
    const/4 v1, 0x0

    .line 271
    .local v1, Result:I
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 272
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, 0x2

    .line 273
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 275
    :cond_1
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 276
    .local v0, Keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 277
    .local v3, iVal:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 278
    .local v4, sValue:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 279
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 280
    goto :goto_0
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 334
    .local v0, Result:Z
    if-eqz v0, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    .line 337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .parameter "format"
    .parameter "data"

    .prologue
    .line 443
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "==================================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    const/4 v0, 0x0

    .line 446
    .local v0, result:Z
    monitor-enter p0

    .line 447
    :try_start_0
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardServiceEx"

    const-string v2, "----------------------------------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_1
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ClipboardServiceEx"

    const-string v2, "in synchronized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_2
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 451
    const/4 v1, 0x0

    monitor-exit p0

    .line 462
    :goto_0
    return v1

    .line 455
    :cond_3
    if-nez p2, :cond_6

    .line 460
    :cond_4
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==================================================================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v1, v0

    .line 462
    goto :goto_0

    .line 456
    :cond_6
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 457
    invoke-direct {p0, p2}, Lcom/android/server/sec/InternalClipboardExService;->sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 458
    const/4 v0, 0x1

    goto :goto_1

    .line 460
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 5
    .parameter "format"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 466
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "==================================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ClipboardServiceEx"

    const-string v3, "SetClipboardDataOriginalToEx"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_1
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetClipboardData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_2
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 471
    const/4 v1, 0x0

    .line 494
    :cond_3
    :goto_0
    return v1

    .line 476
    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/sec/InternalClipboardExService$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/sec/InternalClipboardExService$2;-><init>(Lcom/android/server/sec/InternalClipboardExService;Landroid/sec/clipboard/data/ClipboardData;I)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 492
    .local v0, setDataThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 493
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "ClipboardServiceEx"

    const-string v3, "==================================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetSyncClipboardData(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "text"

    .prologue
    .line 416
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "SetSyncClipboardData"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 418
    .local v0, data:Landroid/sec/clipboard/data/list/ClipboardDataText;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/sec/InternalClipboardExService$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/sec/InternalClipboardExService$1;-><init>(Lcom/android/server/sec/InternalClipboardExService;Landroid/sec/clipboard/data/list/ClipboardDataText;Ljava/lang/CharSequence;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 429
    .local v1, setDataThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 430
    const/4 v2, 0x1

    return v2
.end method

.method public ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 3
    .parameter "format"
    .parameter "clPasteEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 653
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "show ui clipboard dialog in service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    iput p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I

    .line 656
    iput-object p2, p0, Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 658
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 659
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 660
    return-void
.end method

.method public UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 2
    .parameter "format"
    .parameter "clPasteEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 678
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->IsShowUIClipboardData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    :goto_0
    return-void

    .line 683
    :cond_0
    iput p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I

    .line 684
    iput-object p2, p0, Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 686
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 687
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public dismissUIDataDialog()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 696
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 697
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 702
    return-void
.end method

.method public getDataSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 401
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v0}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    goto :goto_0
.end method

.method public showUIDataDialog()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 706
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 707
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "showUIDataDialog : Context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 713
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
