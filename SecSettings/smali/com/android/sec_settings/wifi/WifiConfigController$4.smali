.class Lcom/android/sec_settings/wifi/WifiConfigController$4;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/WifiConfigController;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/WifiConfigController;)V
    .locals 0
    .parameter

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WifiConfigController$4;->this$0:Lcom/android/sec_settings/wifi/WifiConfigController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController$4;->this$0:Lcom/android/sec_settings/wifi/WifiConfigController;

    #calls: Lcom/android/sec_settings/wifi/WifiConfigController;->restartFocusedViewInput()V
    invoke-static {v0}, Lcom/android/sec_settings/wifi/WifiConfigController;->access$400(Lcom/android/sec_settings/wifi/WifiConfigController;)V

    .line 1468
    return-void
.end method
