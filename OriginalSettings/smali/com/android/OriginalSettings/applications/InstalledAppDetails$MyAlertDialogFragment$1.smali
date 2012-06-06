.class Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$1;
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
    .line 735
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$1;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$1;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    move-result-object v0

    #calls: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initiateClearUserData()V
    invoke-static {v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$500(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    .line 739
    return-void
.end method
