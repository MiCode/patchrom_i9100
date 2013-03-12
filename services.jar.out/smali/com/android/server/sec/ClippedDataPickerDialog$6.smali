.class Lcom/android/server/sec/ClippedDataPickerDialog$6;
.super Landroid/telephony/PhoneStateListener;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 636
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clipboard onCallStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 638
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ClipboardServiceEx"

    const-string v1, "clipboard dialog get TelephonyManager.CALL_STATE_RINGING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 641
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    .line 646
    :cond_2
    return-void
.end method
