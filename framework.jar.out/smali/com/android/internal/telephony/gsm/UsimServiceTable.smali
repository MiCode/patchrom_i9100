.class public final Lcom/android/internal/telephony/gsm/UsimServiceTable;
.super Lcom/android/internal/telephony/IccServiceTable;
.source "UsimServiceTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;,
        Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;
    }
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "table"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccServiceTable;-><init>([B)V

    .line 191
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const-string v0, "UsimServiceTable"

    return-object v0
.end method

.method protected getValues()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->values()[Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z
    .locals 1
    .parameter "service"

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->ordinal()I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/internal/telephony/IccServiceTable;->isAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isSSTActive(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z
    .locals 1
    .parameter "service"

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->ordinal()I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/internal/telephony/IccServiceTable;->isSSTActive(I)Z

    move-result v0

    return v0
.end method

.method public isSSTAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;)Z
    .locals 1
    .parameter "service"

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/UsimServiceTable$SimService;->ordinal()I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/internal/telephony/IccServiceTable;->isSSTAvailable(I)Z

    move-result v0

    return v0
.end method
