.class Lcom/android/phone/Settings$4;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Settings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method constructor <init>(Lcom/android/phone/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/phone/Settings$4;->this$0:Lcom/android/phone/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x1

    .line 252
    iget-object v2, p0, Lcom/android/phone/Settings$4;->this$0:Lcom/android/phone/Settings;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 253
    .local v1, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v2, p0, Lcom/android/phone/Settings$4;->this$0:Lcom/android/phone/Settings;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 254
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 257
    iget-object v2, p0, Lcom/android/phone/Settings$4;->this$0:Lcom/android/phone/Settings;

    #setter for: Lcom/android/phone/Settings;->mDataClicked:Z
    invoke-static {v2, v4}, Lcom/android/phone/Settings;->access$002(Lcom/android/phone/Settings;Z)Z

    .line 260
    :cond_0
    return-void
.end method
