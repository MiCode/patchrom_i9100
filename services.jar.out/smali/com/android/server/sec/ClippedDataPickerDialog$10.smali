.class Lcom/android/server/sec/ClippedDataPickerDialog$10;
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
    .line 953
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$10;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$10;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$10;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 957
    .local v0, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLIPBOARD_TO_MEMO_INSERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 958
    .local v1, textIntent:Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 959
    const-string v2, "title"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    const-string v2, "content"

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 961
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$10;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 962
    return-void
.end method
