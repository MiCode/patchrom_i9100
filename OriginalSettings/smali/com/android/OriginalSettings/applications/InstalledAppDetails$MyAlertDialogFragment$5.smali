.class Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$5;
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
    .line 790
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$5;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$5;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$5;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    move-result-object v1

    #getter for: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    invoke-static {v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$100(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$900(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Ljava/lang/String;)V

    .line 794
    return-void
.end method
