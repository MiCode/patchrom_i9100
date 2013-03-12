.class public Landroid/net/wifi/WifiApWhiteList$WhiteList;
.super Ljava/lang/Object;
.source "WifiApWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiApWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WhiteList"
.end annotation


# instance fields
.field private mMac:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mac"
    .parameter "name"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Landroid/net/wifi/WifiApWhiteList$WhiteList;->mMac:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Landroid/net/wifi/WifiApWhiteList$WhiteList;->mName:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList$WhiteList;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList$WhiteList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 26
    iput-object p1, p0, Landroid/net/wifi/WifiApWhiteList$WhiteList;->mName:Ljava/lang/String;

    .line 27
    return-void
.end method
