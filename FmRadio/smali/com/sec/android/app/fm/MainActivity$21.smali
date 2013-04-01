.class Lcom/sec/android/app/fm/MainActivity$21;
.super Lcom/sec/android/app/fm/ui/FMAlertDialog;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 4089
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$21;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0, p2}, Lcom/sec/android/app/fm/ui/FMAlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 4

    .prologue
    .line 4092
    invoke-super {p0}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->show()V

    .line 4093
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$21;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mChangeFreqEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$7100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 4094
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$21;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mChangeFreqEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$7100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$21$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$21$1;-><init>(Lcom/sec/android/app/fm/MainActivity$21;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4102
    return-void
.end method
