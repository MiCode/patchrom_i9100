.class public Lcom/kt/wifiapi/GWSScanResult;
.super Ljava/lang/Object;
.source "GWSScanResult.java"


# static fields
.field private static final DBG:Z


# instance fields
.field public BSSID:Ljava/lang/String;

.field public BSSLoadElement:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public capabilities:Ljava/lang/String;

.field public frequency:I

.field public level:I

.field public vendorSpecificContents:Ljava/lang/String;

.field public vendorSpecificOUI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/kt/wifiapi/GWSScanResult;->DBG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "SSID"
    .parameter "BSSID"
    .parameter "caps"
    .parameter "level"
    .parameter "frequency"
    .parameter "BSSLoadElement"
    .parameter "vendorSpecificOUI"
    .parameter "vendorSpecificContents"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSID:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/kt/wifiapi/GWSScanResult;->level:I

    .line 39
    iput p5, p0, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    .line 40
    iput-object p6, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSLoadElement:Ljava/lang/String;

    .line 41
    iput-object p7, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificOUI:Ljava/lang/String;

    .line 42
    iput-object p8, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificContents:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 50
    .local v0, none:Ljava/lang/String;
    sget-boolean v2, Lcom/kt/wifiapi/GWSScanResult;->DBG:Z

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSID:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    :cond_0
    const-string v2, ", capabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    if-nez v3, :cond_3

    .end local v0           #none:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/kt/wifiapi/GWSScanResult;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", BSSLoadElement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSLoadElement:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", vendorSpecificOUI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificOUI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", vendorSpecificContents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificContents:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 51
    .restart local v0       #none:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSID:Ljava/lang/String;

    goto :goto_1

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    goto :goto_2
.end method
