.class Lcom/android/internal/telephony/ims/IsimUiccRecords$EfIsimPcscfLoaded;
.super Ljava/lang/Object;
.source "IsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/IsimUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfIsimPcscfLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/IsimUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/ims/IsimUiccRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/ims/IsimUiccRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/ims/IsimUiccRecords;Lcom/android/internal/telephony/ims/IsimUiccRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IsimUiccRecords$EfIsimPcscfLoaded;-><init>(Lcom/android/internal/telephony/ims/IsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "EF_ISIM_PCSCF"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "ar"

    .prologue
    .line 96
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .line 97
    .local v5, pcscfList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/ims/IsimUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EF_PCSCF record count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 98
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/ims/IsimUiccRecords;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/ims/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->access$402(Lcom/android/internal/telephony/ims/IsimUiccRecords;[Ljava/lang/String;)[Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, i:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 101
    .local v3, identity:[B
    #calls: Lcom/android/internal/telephony/ims/IsimUiccRecords;->isimTlvToString([B)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->access$100([B)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, pcscf:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/ims/IsimUiccRecords;

    #getter for: Lcom/android/internal/telephony/ims/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->access$400(Lcom/android/internal/telephony/ims/IsimUiccRecords;)[Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    move v0, v1

    .line 104
    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 105
    .end local v3           #identity:[B
    .end local v4           #pcscf:Ljava/lang/String;
    :cond_0
    return-void
.end method
