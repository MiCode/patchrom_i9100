.class Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;
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
    name = "EfCsimLiLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "EF_CSIM_LI"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    const/16 v6, 0x68

    const/16 v5, 0x20

    const/16 v4, 0x65

    .line 85
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    #setter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v2, v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$202(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;[B)[B

    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-byte v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 96
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    aput-byte v5, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aput-byte v5, v1, v2

    .line 87
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 89
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    aput-byte v4, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x6e

    aput-byte v3, v1, v2

    goto :goto_1

    .line 90
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    const/16 v2, 0x66

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x72

    aput-byte v3, v1, v2

    goto :goto_1

    .line 91
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    aput-byte v4, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x73

    aput-byte v3, v1, v2

    goto :goto_1

    .line 92
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    const/16 v2, 0x6a

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x61

    aput-byte v3, v1, v2

    goto :goto_1

    .line 93
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    const/16 v2, 0x6b

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x6f

    aput-byte v3, v1, v2

    goto :goto_1

    .line 94
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    const/16 v2, 0x7a

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aput-byte v6, v1, v2

    goto/16 :goto_1

    .line 95
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    aput-byte v6, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aput-byte v4, v1, v2

    goto/16 :goto_1

    .line 100
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_LI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    .line 101
    :cond_1
    return-void

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
