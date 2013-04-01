.class Lcom/sec/android/app/fm/MainActivity$7;
.super Lcom/samsung/media/fmradio/FMEventListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPowerManager:Landroid/os/PowerManager;

.field private offCode:I

.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;

.field toastAF:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMEventListener;-><init>()V

    return-void
.end method

.method private scanningOver()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1920
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v4, v4, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1922
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsUpdateUI:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4800(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1955
    :goto_0
    return-void

    .line 1925
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1926
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->dismiss()V

    .line 1928
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1930
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsActive:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$6400(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1935
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$6500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1936
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v2, v2, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-le v2, v7, :cond_5

    .line 1937
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$6500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v4, 0x7f0a0015

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v6, v6, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1947
    :cond_3
    :goto_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1948
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1949
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$6500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$6600(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/Runnable;

    move-result-object v3

    aput-object v3, v2, v7

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1951
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsActive:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$6400(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1952
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1954
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v3, 0x9

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1932
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1933
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanningOver  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1939
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v2, v2, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-ne v2, v7, :cond_6

    .line 1940
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$6500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v4, 0x7f0a0016

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v6, v6, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1942
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v2, v2, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-nez v2, :cond_3

    .line 1943
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$6500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v4, 0x7f0a0061

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public earPhoneConnected()V
    .locals 3

    .prologue
    .line 1263
    invoke-super {p0}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneConnected()V

    .line 1265
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshVolumeIcon()V
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4200(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1267
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshScanIcon()V
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1269
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1270
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1271
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1272
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->earPhoneConnected()V

    .line 1271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1274
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method public earPhoneDisconnected()V
    .locals 3

    .prologue
    .line 1214
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->offCode:I

    .line 1216
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshVolumeIcon()V
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4200(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1218
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshScanIcon()V
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1220
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1221
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1222
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1223
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->earPhoneDisconnected()V

    .line 1222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1225
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method public declared-synchronized onAFReceived(J)V
    .locals 8
    .parameter "freq"

    .prologue
    const/high16 v6, 0x447a

    const/high16 v5, 0x4120

    .line 1304
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "onAFReceived"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1305
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAFReceived : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1306
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 1307
    long-to-float v2, p1

    div-float/2addr v2, v6

    float-to-int v1, v2

    .line 1308
    .local v1, freqInt:I
    long-to-float v2, p1

    div-float/2addr v2, v6

    mul-float/2addr v2, v5

    rem-float/2addr v2, v5

    float-to-int v0, v2

    .line 1309
    .local v0, freqDec:I
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->toastAF:Landroid/widget/Toast;

    if-nez v2, :cond_0

    .line 1310
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->toastAF:Landroid/widget/Toast;

    .line 1312
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->toastAF:Landroid/widget/Toast;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v4, 0x7f0a005e

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1314
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->toastAF:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    .end local v0           #freqDec:I
    .end local v1           #freqInt:I
    :cond_1
    monitor-exit p0

    return-void

    .line 1304
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onAFStarted()V
    .locals 2

    .prologue
    .line 1319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "onAFStarted"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    monitor-exit p0

    return-void

    .line 1319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onChannelFound(J)V
    .locals 12
    .parameter "frequency"

    .prologue
    .line 1328
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v7, "Event [onChannelFound]"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1329
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event [onChannelFound] freq:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "count :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v8, v8, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1332
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4600(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1373
    :cond_0
    return-void

    .line 1335
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v7, v6, Lcom/sec/android/app/fm/MainActivity;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sec/android/app/fm/MainActivity;->count:I

    .line 1336
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v6, v6, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    const/high16 v7, -0x4080

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v6, v6, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    const/high16 v7, 0x447a

    mul-float/2addr v6, v7

    long-to-float v7, p1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 1338
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    long-to-float v7, p1

    const/high16 v8, 0x447a

    div-float/2addr v7, v8

    iput v7, v6, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    .line 1341
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    long-to-float v7, p1

    const/high16 v8, 0x447a

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1342
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v7, Lcom/sec/android/app/fm/data/Channel;

    long-to-float v8, p1

    const/high16 v9, 0x447a

    div-float/2addr v8, v9

    const-string v9, ""

    invoke-direct {v7, v8, v9}, Lcom/sec/android/app/fm/data/Channel;-><init>(FLjava/lang/String;)V

    #calls: Lcom/sec/android/app/fm/MainActivity;->addChannel(Lcom/sec/android/app/fm/data/Channel;)V
    invoke-static {v6, v7}, Lcom/sec/android/app/fm/MainActivity;->access$4700(Lcom/sec/android/app/fm/MainActivity;Lcom/sec/android/app/fm/data/Channel;)V

    .line 1343
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsUpdateUI:Z
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4800(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1344
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v6

    const/16 v7, 0x32

    if-ne v6, v7, :cond_7

    .line 1345
    long-to-float v6, p1

    const/high16 v7, 0x447a

    div-float v0, v6, v7

    .line 1346
    .local v0, freq:F
    const-string v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1347
    .local v3, freqText:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v6, v6, Lcom/sec/android/app/fm/MainActivity;->count:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_6

    .line 1348
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v8, 0x7f0a0013

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v11, v11, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1368
    .end local v0           #freq:F
    .end local v3           #freqText:Ljava/lang/String;
    :cond_5
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1369
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1370
    .local v5, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 1371
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v6, p1, p2}, Lcom/sec/android/app/fm/MainActivity$Callback;->onChannelFound(J)V

    .line 1370
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1350
    .end local v4           #i:I
    .end local v5           #size:I
    .restart local v0       #freq:F
    .restart local v3       #freqText:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v8, 0x7f0a0014

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v11, v11, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1352
    .end local v0           #freq:F
    .end local v3           #freqText:Ljava/lang/String;
    :cond_7
    long-to-float v6, p1

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    float-to-int v2, v6

    .line 1353
    .local v2, freqInt:I
    long-to-float v6, p1

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    const/high16 v7, 0x4120

    mul-float/2addr v6, v7

    const/high16 v7, 0x4120

    rem-float/2addr v6, v7

    float-to-int v1, v6

    .line 1355
    .local v1, freqDec:I
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v6, v6, Lcom/sec/android/app/fm/MainActivity;->count:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_8

    .line 1356
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v8, 0x7f0a0011

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v11, v11, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1360
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v8, 0x7f0a0012

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v11, v11, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onOff(I)V
    .locals 11
    .parameter "reasonCode"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1382
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v5, "Event [onOff]"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1383
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event [onOff] :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1385
    sget-boolean v4, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v4, :cond_2

    .line 1387
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->stopAnimation()V

    .line 1388
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5000(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1389
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5000(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 1390
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1391
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1392
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1395
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/high16 v5, -0x4080

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V
    invoke-static {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->access$2000(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 1398
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->updateRecordButton(Z)V
    invoke-static {v4, v10}, Lcom/sec/android/app/fm/MainActivity;->access$5200(Lcom/sec/android/app/fm/MainActivity;Z)V

    .line 1402
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1403
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1404
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 1405
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/fm/MainActivity$Callback;->onOff(I)V

    .line 1404
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1409
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1410
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    const/16 v4, 0xa

    if-ne p1, v4, :cond_5

    .line 1414
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    if-nez v4, :cond_4

    .line 1415
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v7, 0x7f0a0018

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v7, 0x7f0a0062

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    .line 1422
    :cond_4
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1424
    :cond_5
    iget v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->offCode:I

    if-ne v4, v10, :cond_7

    .line 1425
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    if-nez v4, :cond_6

    .line 1426
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v4, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    .line 1428
    :cond_6
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(I)V

    .line 1429
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1430
    iput v8, p0, Lcom/sec/android/app/fm/MainActivity$7;->offCode:I

    .line 1432
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;
    invoke-static {v4, v9}, Lcom/sec/android/app/fm/MainActivity;->access$5302(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1433
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;
    invoke-static {v4, v9}, Lcom/sec/android/app/fm/MainActivity;->access$502(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1434
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;
    invoke-static {v4, v9}, Lcom/sec/android/app/fm/MainActivity;->access$802(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1436
    sget-boolean v4, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v4, :cond_8

    .line 1437
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v2

    .line 1438
    .local v2, rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->clearCurTagList()V

    .line 1439
    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getTagListArray()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8

    .line 1440
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    const v5, 0x7f0200ec

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1441
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z
    invoke-static {v4, v8}, Lcom/sec/android/app/fm/MainActivity;->access$3902(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1442
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v5, "localpreference"

    invoke-virtual {v4, v5, v8}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1443
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "rtplus"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1444
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1448
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    :cond_8
    invoke-static {}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->cancel()V

    .line 1449
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v4, v4, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v4, :cond_9

    .line 1454
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$1200(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1458
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1459
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->dismiss()V

    .line 1462
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z
    invoke-static {v4, v8}, Lcom/sec/android/app/fm/MainActivity;->access$5602(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1465
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_b

    .line 1466
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1468
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mFrqCover:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5800(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/View;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1469
    return-void
.end method

.method public onOn()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1478
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "Event [onOn]"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1480
    iput v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->offCode:I

    .line 1482
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1483
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1484
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1485
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->onOn()V

    .line 1484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1487
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 1488
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 1489
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v3, v3, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V
    invoke-static {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->access$2000(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 1492
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->updateRecordButton(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/fm/MainActivity;->access$5200(Lcom/sec/android/app/fm/MainActivity;Z)V

    .line 1494
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v2, v2, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v2, :cond_1

    .line 1495
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->resumeFMRecording()V
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$3500(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1499
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$5600(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1500
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity;->recordFMRadioAudio()V

    .line 1501
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/fm/MainActivity;->access$5602(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1506
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mIsLastPlay:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/fm/MainActivity;->access$5902(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1509
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$5700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1510
    return-void
.end method

.method public onRDSDisabled()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1519
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v4, "onRDSDisabled() is called"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1520
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/sec/android/app/fm/MainActivity;->access$5302(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1521
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/sec/android/app/fm/MainActivity;->access$502(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1522
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/sec/android/app/fm/MainActivity;->access$802(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1527
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isSeeking()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1528
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/high16 v4, -0x4080

    #calls: Lcom/sec/android/app/fm/MainActivity;->resetRDS(F)V
    invoke-static {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;F)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1536
    :goto_0
    sget-boolean v3, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v3, :cond_0

    .line 1537
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v2

    .line 1538
    .local v2, rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->clearCurTagList()V

    .line 1539
    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getTagListArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1540
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    const v4, 0x7f0200ec

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1541
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1542
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/fm/MainActivity;->access$3902(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1543
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v4, "localpreference"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1544
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "rtplus"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1545
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1548
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/MainActivity;->radioStatusHideAnimation()V

    .line 1549
    return-void

    .line 1530
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v4

    #calls: Lcom/sec/android/app/fm/MainActivity;->resetRDS(F)V
    invoke-static {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;F)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1531
    :catch_0
    move-exception v0

    .line 1532
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onRDSEnabled()V
    .locals 2

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "onRDSEnabled() is called"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1560
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->radioStatusHideAnimation()V

    .line 1561
    return-void
.end method

.method public onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "freq"
    .parameter "channelName"
    .parameter "radioText"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1572
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v5, "[onRDSReceived]"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1573
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onRDSReceived] freq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ChannelName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "RadioText:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1575
    if-eqz p3, :cond_1

    const-string v4, ""

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1576
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5300(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v3

    .line 1577
    .local v3, setStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5300(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1578
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1579
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1580
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;
    invoke-static {v4, p3}, Lcom/sec/android/app/fm/MainActivity;->access$5302(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1583
    .end local v3           #setStr:Ljava/lang/String;
    :cond_1
    if-eqz p4, :cond_6

    const-string v4, ""

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1585
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$500(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v3

    .line 1586
    .restart local v3       #setStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$500(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1588
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1589
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->clearAnimation()V

    .line 1591
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1592
    .local v0, displayAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x14d

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1593
    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 1594
    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1595
    new-instance v4, Lcom/sec/android/app/fm/MainActivity$7$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/fm/MainActivity$7$1;-><init>(Lcom/sec/android/app/fm/MainActivity$7;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1602
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1605
    .end local v0           #displayAnimation:Landroid/view/animation/AlphaAnimation;
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->setRadioStatusTextVisibility(I)V
    invoke-static {v4, v8}, Lcom/sec/android/app/fm/MainActivity;->access$600(Lcom/sec/android/app/fm/MainActivity;I)V

    .line 1606
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1607
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;
    invoke-static {v4, p4}, Lcom/sec/android/app/fm/MainActivity;->access$502(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1608
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->access$802(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1610
    sget-boolean v4, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v4, :cond_4

    .line 1611
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->setRadioText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1612
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v2

    .line 1613
    .local v2, rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getTagListArray()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 1614
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    const v5, 0x7f0200ec

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1615
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z
    invoke-static {v4, v8}, Lcom/sec/android/app/fm/MainActivity;->access$3902(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1616
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v5, "localpreference"

    invoke-virtual {v4, v5, v8}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1617
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "rtplus"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1618
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1623
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1624
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v5, "RDS String is set on text field"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1631
    .end local v3           #setStr:Ljava/lang/String;
    :goto_0
    return-void

    .line 1626
    .restart local v3       #setStr:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v5, "RDS String is same ignoring setting"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1629
    .end local v3           #setStr:Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/16 v5, 0x8

    #calls: Lcom/sec/android/app/fm/MainActivity;->setRadioStatusTextVisibility(I)V
    invoke-static {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->access$600(Lcom/sec/android/app/fm/MainActivity;I)V

    goto :goto_0
.end method

.method public onRTPlusReceived(IIIIII)V
    .locals 14
    .parameter "contentType1"
    .parameter "startPos1"
    .parameter "additionalLen1"
    .parameter "contentType2"
    .parameter "startPos2"
    .parameter "additionalLen2"

    .prologue
    .line 1645
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[onRTPlusReceived] contentType1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  startPos1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  additionalLen1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1646
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[onRTPlusReceived] contentType2:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  startPos2:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  additionalLen2:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1648
    sget-boolean v11, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v11, :cond_3

    .line 1649
    const/4 v6, 0x0

    .line 1650
    .local v6, neetToUpdate1:Z
    const/4 v7, 0x0

    .line 1652
    .local v7, neetToUpdate2:Z
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v11}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v9

    .line 1653
    .local v9, rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v9, v11, p1, v0, v1}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->addCurTagList(Landroid/content/Context;III)Z

    move-result v6

    .line 1654
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v9, v11, v0, v1, v2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->addCurTagList(Landroid/content/Context;III)Z

    move-result v7

    .line 1656
    if-nez v6, :cond_0

    if-nez v7, :cond_0

    invoke-static {}, Lcom/sec/android/app/fm/MainActivity;->access$6000()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1657
    :cond_0
    invoke-virtual {v9}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getCurTagList()Lcom/sec/android/app/fm/ui/RTPTagList;

    move-result-object v3

    .line 1658
    .local v3, curTagList:Lcom/sec/android/app/fm/ui/RTPTagList;
    const-string v8, ""

    .line 1660
    .local v8, radioText:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1661
    .local v5, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/RTPTagList;->size()I

    move-result v11

    if-ge v5, v11, :cond_1

    .line 1662
    invoke-virtual {v3, v5}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTag(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v10

    .line 1663
    .local v10, tag:Lcom/sec/android/app/fm/ui/RTPTag;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/sec/android/app/fm/ui/RTPTag;->getTagCode()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getTagName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1661
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1666
    .end local v10           #tag:Lcom/sec/android/app/fm/ui/RTPTag;
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_2

    .line 1667
    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x3

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1668
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v12, 0x0

    #calls: Lcom/sec/android/app/fm/MainActivity;->setRadioStatusTextVisibility(I)V
    invoke-static {v11, v12}, Lcom/sec/android/app/fm/MainActivity;->access$600(Lcom/sec/android/app/fm/MainActivity;I)V

    .line 1669
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1670
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1671
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;
    invoke-static {v11, v8}, Lcom/sec/android/app/fm/MainActivity;->access$802(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1672
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/sec/android/app/fm/MainActivity;->access$6002(Z)Z

    .line 1675
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[onRTPlusReceived] RT+:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1677
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z
    invoke-static {v11}, Lcom/sec/android/app/fm/MainActivity;->access$3900(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1678
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v11}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v11

    const v12, 0x7f0200f1

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1679
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v11}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v12, v12, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1680
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v12, 0x1

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z
    invoke-static {v11, v12}, Lcom/sec/android/app/fm/MainActivity;->access$3902(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1681
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v12, "localpreference"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1682
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "rtplus"

    const/4 v12, 0x1

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1683
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1687
    .end local v3           #curTagList:Lcom/sec/android/app/fm/ui/RTPTagList;
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #i:I
    .end local v6           #neetToUpdate1:Z
    .end local v7           #neetToUpdate2:Z
    .end local v8           #radioText:Ljava/lang/String;
    .end local v9           #rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    :cond_3
    return-void
.end method

.method public onScanFinished([J)V
    .locals 7
    .parameter "frequency"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1697
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "Event [onScanFinished]"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1698
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event [onScanFinished] freq[]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1700
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/fm/MainActivity;->access$1002(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1701
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4600(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1702
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/fm/MainActivity;->access$4602(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1703
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity$7;->scanningOver()V

    .line 1706
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1707
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1708
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1709
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/fm/MainActivity$Callback;->onScanFinished([J)V

    .line 1708
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1712
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 1713
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mDuringFirstAceess:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/fm/MainActivity;->access$3302(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1714
    return-void
.end method

.method public onScanStarted()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1723
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "Event [onScanStarted]"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1725
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iput v4, v2, Lcom/sec/android/app/fm/MainActivity;->count:I

    .line 1726
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/high16 v3, -0x4080

    iput v3, v2, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    .line 1728
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/fm/MainActivity;->access$4602(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1730
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsUpdateUI:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4800(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1731
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$1000(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1732
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    const v3, 0x7f0a003f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setTitle(I)V

    .line 1736
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v4, 0x7f0a000c

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1740
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1742
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1743
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1744
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1745
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->onScanStarted()V

    .line 1744
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1734
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setTitle(I)V

    goto :goto_0

    .line 1749
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v2, v2, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v2, :cond_3

    .line 1750
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$1200(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1753
    :cond_3
    return-void
.end method

.method public onScanStopped([J)V
    .locals 5
    .parameter "frequency"

    .prologue
    const/4 v4, 0x0

    .line 1762
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "Event [onScanStopped]"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1764
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/fm/MainActivity;->access$1002(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1765
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4600(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1766
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->access$4602(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1767
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity$7;->scanningOver()V

    .line 1771
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1772
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1773
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1774
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/fm/MainActivity$Callback;->onScanStopped([J)V

    .line 1773
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1777
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 1778
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mDuringFirstAceess:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/fm/MainActivity;->access$3302(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1779
    return-void
.end method

.method public onTune(J)V
    .locals 13
    .parameter "frequency"

    .prologue
    const/high16 v12, 0x42c8

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1788
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v7, "Event [onTune]"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1789
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event [onTune] frequency:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1791
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v7, p1

    div-float/2addr v7, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v8, 0x7f0a0029

    invoke-virtual {v7, v8}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1792
    .local v0, desc:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mFrqCover:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$5800(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1795
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->unlock()V

    .line 1797
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;
    invoke-static {v6, v11}, Lcom/sec/android/app/fm/MainActivity;->access$502(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1798
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;
    invoke-static {v6, v11}, Lcom/sec/android/app/fm/MainActivity;->access$5302(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1799
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;
    invoke-static {v6, v11}, Lcom/sec/android/app/fm/MainActivity;->access$802(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1801
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v2

    .line 1803
    .local v2, freq:F
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onTune] freq:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1805
    const/high16 v6, -0x4080

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_1

    .line 1807
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iput v2, v6, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 1808
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V
    invoke-static {v6, v2}, Lcom/sec/android/app/fm/MainActivity;->access$2000(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 1810
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    mul-float v7, v2, v12

    float-to-long v7, v7

    iput-wide v7, v6, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    .line 1812
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$5700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1813
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$6100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1819
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->resetRDS(F)V
    invoke-static {v6, v2}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 1820
    sget-boolean v6, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v6, :cond_0

    .line 1821
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v6}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v4

    .line 1822
    .local v4, rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->clearCurTagList()V

    .line 1823
    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getTagListArray()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1824
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v6

    const v7, 0x7f0200ec

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1825
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1826
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z
    invoke-static {v6, v9}, Lcom/sec/android/app/fm/MainActivity;->access$3902(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1827
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v7, "localpreference"

    invoke-virtual {v6, v7, v9}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1828
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "rtplus"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1829
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1838
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    :cond_0
    sget-boolean v6, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v6, :cond_2

    .line 1839
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-wide v7, v7, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    invoke-virtual {v6, v7, v8, v10}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setFrequency(JZ)V

    .line 1846
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->saveCurrentFreq()V
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$6300(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1847
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/sec/android/app/fm/MainActivity;->sendFMStatusBroadcast(FLjava/lang/String;)V

    .line 1850
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1851
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1852
    .local v5, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 1853
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/fm/MainActivity$Callback;

    const/high16 v7, 0x447a

    mul-float/2addr v7, v2

    float-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/fm/MainActivity$Callback;->onTune(J)V

    .line 1852
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1841
    .end local v3           #i:I
    .end local v5           #size:I
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-wide v7, v7, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setFrequency(JZ)V

    .line 1842
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$6200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-wide v7, v7, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFrequency(J)V

    goto :goto_0

    .line 1857
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v6, v6, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    new-instance v7, Lcom/sec/android/app/fm/MainActivity$7$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/fm/MainActivity$7$2;-><init>(Lcom/sec/android/app/fm/MainActivity$7;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1917
    return-void
.end method

.method public recFinish()V
    .locals 2

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[recFinish]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1638
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$1200(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1641
    :cond_0
    return-void
.end method

.method public volumeLock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1279
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "volumeLock"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1280
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->mPowerManager:Landroid/os/PowerManager;

    if-nez v1, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->mPowerManager:Landroid/os/PowerManager;

    .line 1283
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 1286
    .local v0, isScreenOn:Z
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v1, v1, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mVolumeChangedFromRadio:Z
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$4500(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsOptionsMenuShowing:Z
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$3700(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 1287
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1288
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->access$1602(Lcom/sec/android/app/fm/MainActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1290
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v1

    const v2, 0x7f0a008e

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 1291
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1292
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1293
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mVolumeChangedFromRadio:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->access$4502(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1299
    :cond_3
    :goto_0
    return-void

    .line 1295
    :cond_4
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1296
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mVolumeChangedFromRadio:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/fm/MainActivity;->access$4502(Lcom/sec/android/app/fm/MainActivity;Z)Z

    goto :goto_0
.end method
