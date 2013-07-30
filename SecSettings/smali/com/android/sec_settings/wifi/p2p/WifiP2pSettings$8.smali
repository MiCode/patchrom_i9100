.class Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$8;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->connectFromMultiView()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 902
    iput-object p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 907
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " connect fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 904
    const-string v0, "WifiP2pSettings"

    const-string v1, " connect success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-void
.end method
