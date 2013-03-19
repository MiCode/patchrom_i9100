.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 302
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v0

    .line 303
    .local v0, whiteList:Landroid/net/wifi/WifiApWhiteList;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$600(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 304
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$600(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 305
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$700(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 306
    return-void
.end method
