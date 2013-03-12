.class Lcom/android/server/sec/ClippedDataPickerDialog$11;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

.field final synthetic val$data:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 977
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$11;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$11;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 980
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v3

    .line 981
    .local v3, mFileHelper:Landroid/sec/clipboard/util/FileHelper;
    invoke-virtual {v3}, Landroid/sec/clipboard/util/FileHelper;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, filePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$11;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 983
    .local v0, bitData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 985
    .local v4, path:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.clipboardsaveservice.CLIPBOARD_SAVE_RECEIVER"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 987
    .local v2, imageIntent:Landroid/content/Intent;
    const-string v5, "copyPath"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    const-string v5, "pastePath"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Clipboard/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$11;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 990
    return-void
.end method
