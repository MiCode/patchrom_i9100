.class Lcom/android/OriginalSettings/bluetooth/DockService$5;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 560
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/DockService$5;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 562
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService$5;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    #getter for: Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/OriginalSettings/bluetooth/DockService;->access$400(Lcom/android/OriginalSettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService$5;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService$5;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    #getter for: Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/OriginalSettings/bluetooth/DockService;->access$400(Lcom/android/OriginalSettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothPreferences;->hasDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService$5;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService$5;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    #getter for: Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/OriginalSettings/bluetooth/DockService;->access$400(Lcom/android/OriginalSettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothPreferences;->saveDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService$5;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService$5;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    #getter for: Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/OriginalSettings/bluetooth/DockService;->access$400(Lcom/android/OriginalSettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService$5;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    #getter for: Lcom/android/OriginalSettings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I
    invoke-static {v2}, Lcom/android/OriginalSettings/bluetooth/DockService;->access$600(Lcom/android/OriginalSettings/bluetooth/DockService;)I

    move-result v2

    #calls: Lcom/android/OriginalSettings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/bluetooth/DockService;->access$700(Lcom/android/OriginalSettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 576
    :cond_1
    return-void
.end method
