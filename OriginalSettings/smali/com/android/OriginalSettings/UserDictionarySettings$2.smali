.class Lcom/android/OriginalSettings/UserDictionarySettings$2;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/UserDictionarySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/UserDictionarySettings;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/UserDictionarySettings;Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/OriginalSettings/UserDictionarySettings$2;->this$0:Lcom/android/OriginalSettings/UserDictionarySettings;

    iput-object p2, p0, Lcom/android/OriginalSettings/UserDictionarySettings$2;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/OriginalSettings/UserDictionarySettings$2;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings$2;->this$0:Lcom/android/OriginalSettings/UserDictionarySettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/UserDictionarySettings$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/OriginalSettings/UserDictionarySettings;->onAddOrEditFinished(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/UserDictionarySettings;->access$100(Lcom/android/OriginalSettings/UserDictionarySettings;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings$2;->this$0:Lcom/android/OriginalSettings/UserDictionarySettings;

    #getter for: Lcom/android/OriginalSettings/UserDictionarySettings;->mAutoReturn:Z
    invoke-static {v0}, Lcom/android/OriginalSettings/UserDictionarySettings;->access$000(Lcom/android/OriginalSettings/UserDictionarySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 255
    :cond_0
    return-void
.end method
