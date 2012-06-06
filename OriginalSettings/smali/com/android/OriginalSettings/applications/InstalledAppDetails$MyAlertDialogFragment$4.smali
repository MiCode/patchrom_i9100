.class Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 778
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    move-result-object v0

    #getter for: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$800(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 780
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    move-result-object v0

    #calls: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$700(Lcom/android/OriginalSettings/applications/InstalledAppDetails;ZZ)V

    .line 781
    return-void
.end method
