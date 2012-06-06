.class Lcom/android/OriginalSettings/bluetooth/DockService$4;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 546
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/DockService$4;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService$4;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    #getter for: Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/OriginalSettings/bluetooth/DockService;->access$500(Lcom/android/OriginalSettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService$4;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService$4;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    #getter for: Lcom/android/OriginalSettings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I
    invoke-static {v1}, Lcom/android/OriginalSettings/bluetooth/DockService;->access$600(Lcom/android/OriginalSettings/bluetooth/DockService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService$4;->this$0:Lcom/android/OriginalSettings/bluetooth/DockService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/DockService;->stopForeground(Z)V

    .line 555
    return-void
.end method
