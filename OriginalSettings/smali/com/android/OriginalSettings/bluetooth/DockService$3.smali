.class Lcom/android/OriginalSettings/bluetooth/DockService$3;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/bluetooth/DockService;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/DockService$3;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService$3;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    #getter for: Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/OriginalSettings/bluetooth/DockService;->access$400(Lcom/android/OriginalSettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService$3;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService$3;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    #getter for: Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/OriginalSettings/bluetooth/DockService;->access$400(Lcom/android/OriginalSettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothPreferences;->saveDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 540
    :cond_0
    return-void
.end method
