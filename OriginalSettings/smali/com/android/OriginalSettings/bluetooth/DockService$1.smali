.class Lcom/android/OriginalSettings/bluetooth/DockService$1;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/bluetooth/DockService;->msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

.field final synthetic val$d:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$startId:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/DockService$1;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    iput-object p2, p0, Lcom/android/OriginalSettings/bluetooth/DockService$1;->val$d:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lcom/android/OriginalSettings/bluetooth/DockService$1;->val$state:I

    iput p4, p0, Lcom/android/OriginalSettings/bluetooth/DockService$1;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService$1;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService$1;->val$d:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService$1;->val$state:I

    iget v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService$1;->val$startId:I

    #calls: Lcom/android/OriginalSettings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/OriginalSettings/bluetooth/DockService;->access$200(Lcom/android/OriginalSettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 391
    return-void
.end method
