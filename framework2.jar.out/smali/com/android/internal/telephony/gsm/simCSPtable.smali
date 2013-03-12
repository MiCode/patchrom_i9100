.class public Lcom/android/internal/telephony/gsm/simCSPtable;
.super Ljava/lang/Object;
.source "simCSPtable.java"


# static fields
.field protected static final DBG:Z = true


# instance fields
.field public ALS:Z

.field public Aoc:Z

.field public BAIC:Z

.field public BICRoam:Z

.field public BOAC:Z

.field public BOIC:Z

.field public BOICexHC:Z

.field public CCBS:Z

.field public CFB:Z

.field public CFNRc:Z

.field public CFNRy:Z

.field public CFU:Z

.field public CLIP:Z

.field public CLIblock:Z

.field public CLIsend:Z

.field public CT:Z

.field public CUG:Z

.field public CUGOA:Z

.field public CW:Z

.field public CoLP:Z

.field public CoLR:Z

.field public Data:Z

.field public Del_Conf:Z

.field public Fax:Z

.field public GPRS:Z

.field public HOLD:Z

.field public HSCSD:Z

.field InfoNumber:B

.field public Language:Z

.field public MCI:Z

.field public MPTY:Z

.field public MultiBand:Z

.field public MultiSubscribProfile:Z

.field public PLMNmode:Z

.field public PrefCUG:Z

.field public ProtocolID:Z

.field public ReplyPath:Z

.field public SM_CB:Z

.field public SM_MO:Z

.field public SM_MO_Email:Z

.field public SM_MO_Paging:Z

.field public SM_MT:Z

.field public UserUserSignaling:Z

.field public VPS:Z

.field public ValidityPeriod:Z

.field public VoiceBroadCastSVC:Z

.field public VoiceGroupCall:Z

.field public services:[B


# direct methods
.method public constructor <init>([B)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFU:Z

    .line 17
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFB:Z

    .line 18
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRy:Z

    .line 19
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRc:Z

    .line 20
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CT:Z

    .line 22
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOAC:Z

    .line 23
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOIC:Z

    .line 24
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOICexHC:Z

    .line 25
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BAIC:Z

    .line 26
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BICRoam:Z

    .line 28
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MPTY:Z

    .line 29
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CUG:Z

    .line 30
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Aoc:Z

    .line 31
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->PrefCUG:Z

    .line 32
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CUGOA:Z

    .line 34
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->HOLD:Z

    .line 35
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CW:Z

    .line 36
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CCBS:Z

    .line 37
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->UserUserSignaling:Z

    .line 39
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MT:Z

    .line 40
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO:Z

    .line 41
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_CB:Z

    .line 42
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ReplyPath:Z

    .line 43
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Del_Conf:Z

    .line 44
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ProtocolID:Z

    .line 45
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ValidityPeriod:Z

    .line 47
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ALS:Z

    .line 49
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIP:Z

    .line 50
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLR:Z

    .line 51
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLP:Z

    .line 52
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MCI:Z

    .line 53
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIsend:Z

    .line 54
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIblock:Z

    .line 56
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->GPRS:Z

    .line 57
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->HSCSD:Z

    .line 58
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceGroupCall:Z

    .line 59
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceBroadCastSVC:Z

    .line 60
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiSubscribProfile:Z

    .line 61
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiBand:Z

    .line 63
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->PLMNmode:Z

    .line 64
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VPS:Z

    .line 65
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Paging:Z

    .line 66
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Email:Z

    .line 67
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Fax:Z

    .line 68
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Data:Z

    .line 69
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Language:Z

    .line 71
    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->InfoNumber:B

    .line 72
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    .line 81
    const-string v3, "Enter  simCSPtable"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 83
    array-length v2, p1

    .line 84
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 86
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    .line 89
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 90
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    aget-byte v0, v3, v1

    .line 92
    .local v0, Abyte:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "i is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abyte is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 95
    sparse-switch v0, :sswitch_data_0

    .line 89
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 97
    :sswitch_0
    const-string v3, "01 : Call offering"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->CallOffering(B)V

    goto :goto_1

    .line 102
    :sswitch_1
    const-string v3, "02 : Call Restriction"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->CallRestriction(B)V

    goto :goto_1

    .line 107
    :sswitch_2
    const-string v3, "03 : Other Supp Services"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->OtherSuppServices(B)V

    goto :goto_1

    .line 112
    :sswitch_3
    const-string v3, "04 : Call Completion"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->CallCompletion(B)V

    goto :goto_1

    .line 117
    :sswitch_4
    const-string v3, "05 : Teleservices"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->Teleservices(B)V

    goto :goto_1

    .line 122
    :sswitch_5
    const-string v3, "06 : CPHS Teleservices"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->CPHSteleservices(B)V

    goto/16 :goto_1

    .line 127
    :sswitch_6
    const-string v3, "07 : CPHS Feature"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 130
    :sswitch_7
    const-string v3, "08 : Number Identif"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 131
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->NumberIdentif(B)V

    goto/16 :goto_1

    .line 135
    :sswitch_8
    const-string v3, "09 : Phase 2+ services"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 136
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->PhaseTwoServices(B)V

    goto/16 :goto_1

    .line 140
    :sswitch_9
    const-string v3, "C0 : ValueAdded Services"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->ValueAddedServices(B)V

    goto/16 :goto_1

    .line 145
    :sswitch_a
    const-string v3, "D5 : Information Numbers"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->InformationNumbers(B)V

    goto/16 :goto_1

    .line 153
    .end local v0           #Abyte:I
    :cond_1
    return-void

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        -0x40 -> :sswitch_9
        -0x2b -> :sswitch_a
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
    .end sparse-switch
.end method

.method private CPHSteleservices(B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 246
    shr-int/lit8 v0, p1, 0x7

    int-to-byte p1, v0

    .line 247
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ALS:Z

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALS is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ALS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private CallCompletion(B)V
    .locals 1
    .parameter "b"

    .prologue
    .line 213
    shr-int/lit8 v0, p1, 0x4

    int-to-byte p1, v0

    .line 214
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->UserUserSignaling:Z

    .line 215
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 216
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CCBS:Z

    .line 217
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 218
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CW:Z

    .line 219
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 220
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->HOLD:Z

    .line 222
    return-void
.end method

.method private CallOffering(B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 162
    shr-int/lit8 v0, p1, 0x3

    int-to-byte p1, v0

    .line 163
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CT:Z

    .line 164
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 165
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRc:Z

    .line 166
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 167
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRy:Z

    .line 168
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFB:Z

    .line 170
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFU:Z

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CT is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFNRc is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFNRy is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFB is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFU is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFU:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method private CallRestriction(B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 180
    shr-int/lit8 v0, p1, 0x3

    int-to-byte p1, v0

    .line 181
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BICRoam:Z

    .line 182
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 183
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BAIC:Z

    .line 184
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 185
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOICexHC:Z

    .line 186
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 187
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOIC:Z

    .line 188
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 189
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOAC:Z

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BICRoam is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BICRoam:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BAIC is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BAIC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOICexHC is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOICexHC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOIC is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOIC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOAC is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOAC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private InformationNumbers(B)V
    .locals 0
    .parameter "b"

    .prologue
    .line 322
    iput-byte p1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->InfoNumber:B

    .line 323
    return-void
.end method

.method private NumberIdentif(B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 251
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 252
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIblock:Z

    .line 253
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 254
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIsend:Z

    .line 255
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 256
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MCI:Z

    .line 257
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 258
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLP:Z

    .line 259
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLR:Z

    .line 261
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIP:Z

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLIblock is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIblock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLIsend is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIsend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MCI is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MCI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoLP is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoLR is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLR:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLIP is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method private OtherSuppServices(B)V
    .locals 1
    .parameter "b"

    .prologue
    .line 199
    shr-int/lit8 v0, p1, 0x3

    int-to-byte p1, v0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CUGOA:Z

    .line 201
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 202
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->PrefCUG:Z

    .line 203
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 204
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Aoc:Z

    .line 205
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 206
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CUG:Z

    .line 207
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 208
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MPTY:Z

    .line 210
    return-void
.end method

.method private PhaseTwoServices(B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 274
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 275
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiBand:Z

    .line 276
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 277
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiSubscribProfile:Z

    .line 278
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 279
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceBroadCastSVC:Z

    .line 280
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 281
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceGroupCall:Z

    .line 282
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 283
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->HSCSD:Z

    .line 284
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->GPRS:Z

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPRS is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->GPRS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSCSD is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->HSCSD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceGroupCall is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceGroupCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceBroadCastSVC is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceBroadCastSVC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiSubscribProfile is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiSubscribProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiSubscribProfile is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiSubscribProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiBand is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiBand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method private Teleservices(B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 225
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 226
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ValidityPeriod:Z

    .line 227
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 228
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ProtocolID:Z

    .line 229
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 230
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Del_Conf:Z

    .line 231
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 232
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ReplyPath:Z

    .line 233
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 234
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_CB:Z

    .line 235
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 236
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO:Z

    .line 237
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 238
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MT:Z

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SM_CB is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_CB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SM_MO is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SM_MT is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method private ValueAddedServices(B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Language:Z

    .line 298
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 299
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 300
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Data:Z

    .line 301
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 302
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Fax:Z

    .line 303
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 304
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Email:Z

    .line 305
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 306
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Paging:Z

    .line 307
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 308
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VPS:Z

    .line 309
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 310
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->PLMNmode:Z

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PLMNmode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->PLMNmode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPS is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VPS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SM_MO_Paging is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Paging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SM_MO_Email is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Email:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fax is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Fax:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Data:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Language is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Language:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method private isAvailable(B)Z
    .locals 2
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    .line 156
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_0

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 77
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[simCSPtable]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method
