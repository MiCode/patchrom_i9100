.class Lcom/android/sec_settings/wifi/mobileap/WifiApSettings$4;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSettings$4;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSettings$4;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSettings$4;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSettings$4;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I
    invoke-static {v2}, Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;->access$100(Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;)I

    move-result v2

    #calls: Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromIndex(I)I
    invoke-static {v1, v2}, Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;->access$200(Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;I)I

    move-result v1

    #calls: Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;->setTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;->access$300(Lcom/android/sec_settings/wifi/mobileap/WifiApSettings;I)V

    .line 597
    return-void
.end method
