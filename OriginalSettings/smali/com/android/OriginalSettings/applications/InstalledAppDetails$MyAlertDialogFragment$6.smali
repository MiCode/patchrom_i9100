.class Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$6;
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
    .line 813
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$6;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 816
    new-instance v1, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$6;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    move-result-object v0

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$6;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    move-result-object v2

    #getter for: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    invoke-static {v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$100(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 819
    return-void
.end method
