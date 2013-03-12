.class Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimMdnLoaded;
.super Ljava/lang/Object;
.source "CdmaLteUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimMdnLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimMdnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimMdnLoaded;-><init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "EF_CSIM_MDN"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 164
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 165
    .local v0, data:[B
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimMdnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSIM_MDN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    .line 166
    :cond_0
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit8 v1, v2, 0xf

    .line 167
    .local v1, mdnDigitsNum:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimMdnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    const/4 v3, 0x1

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->cdmaBcdToString([BII)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mMdn:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$1402(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$1500()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimMdnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSIM MDN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimMdnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mMdn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$1400(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    .line 169
    :cond_1
    return-void
.end method
