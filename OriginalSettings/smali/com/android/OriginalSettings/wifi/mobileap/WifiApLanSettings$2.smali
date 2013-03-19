.class Lcom/android/settings/wifi/mobileap/WifiApLanSettings$2;
.super Ljava/lang/Object;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$200(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/DhcpServerConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$102(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    return-void
.end method
