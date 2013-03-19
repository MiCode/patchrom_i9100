.class Lcom/sec/android/app/camera/CameraSharingDeviceDialog$1;
.super Ljava/lang/Object;
.source "CameraSharingDeviceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$1;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$1;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->dismiss()V

    .line 165
    return-void
.end method
