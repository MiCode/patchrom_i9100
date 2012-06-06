.class Lcom/android/OriginalSettings/UserDictionarySettings$1;
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


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/UserDictionarySettings;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/OriginalSettings/UserDictionarySettings$1;->this$0:Lcom/android/OriginalSettings/UserDictionarySettings;

    iput-object p2, p0, Lcom/android/OriginalSettings/UserDictionarySettings$1;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings$1;->this$0:Lcom/android/OriginalSettings/UserDictionarySettings;

    #getter for: Lcom/android/OriginalSettings/UserDictionarySettings;->mAutoReturn:Z
    invoke-static {v0}, Lcom/android/OriginalSettings/UserDictionarySettings;->access$000(Lcom/android/OriginalSettings/UserDictionarySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 259
    :cond_0
    return-void
.end method
