.class Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;
.super Ljava/lang/Object;
.source "WifiApDeviceInfoPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

.field final synthetic val$current:I


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iput p2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;->val$current:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 108
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;->val$current:I

    if-eq v0, p2, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->checkConnectedDeviceOrChangeAllowPolicy()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$100(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    .line 110
    :cond_0
    return-void
.end method
