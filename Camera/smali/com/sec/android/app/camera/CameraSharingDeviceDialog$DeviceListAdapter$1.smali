.class Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter$1;
.super Ljava/lang/Object;
.source "CameraSharingDeviceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;

.field final synthetic val$cb:Landroid/widget/CheckBox;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;ILandroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter$1;->this$1:Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;

    iput p2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter$1;->val$cb:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter$1;->this$1:Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    #getter for: Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->access$000(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;)[Z

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter$1;->val$position:I

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter$1;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 93
    return-void
.end method
