.class public Lcom/android/internal/telephony/SimLockInfoResult;
.super Ljava/lang/Object;
.source "SimLockInfoResult.java"


# static fields
.field private static final LOCK_ACL:I = 0xb

.field private static final LOCK_CORP_PERS:I = 0x8

.field private static final LOCK_FD:I = 0x4

.field private static final LOCK_NETWORK_PERS:I = 0x5

.field private static final LOCK_NETWORK_SUBSET_PERS:I = 0x6

.field private static final LOCK_PH_FSIM:I = 0x2

.field private static final LOCK_PH_SIM:I = 0x1

.field private static final LOCK_PIN2:I = 0x9

.field private static final LOCK_PUK2:I = 0xa

.field private static final LOCK_READY:I = 0x0

.field private static final LOCK_SIM:I = 0x3

.field private static final LOCK_SP_PERS:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "SimLockInfoResult"

.field private static final NOT_NEED:I = 0x0

.field private static final NO_SIM:I = 0x80

.field private static final PERM_BLOCKED:I = 0x5

.field private static final PIN:I = 0x1

.field private static final PIN2:I = 0x3

.field private static final PIN2_DISABLE:I = 0x6

.field private static final PUK:I = 0x2

.field private static final PUK2:I = 0x4

.field static Pin2_Retry:I

.field static Pin_Retry:I

.field static Puk2_Retry:I

.field static Puk_Retry:I

.field static isPermBlocked:I

.field static lockKey:I

.field static lockPin2Key:I

.field static lockPinKey:I

.field static lockType:I

.field static numRetry:I

.field static num_lock_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    .line 44
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    .line 45
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    .line 46
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 47
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 48
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    .line 49
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 50
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 51
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 52
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 53
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->isPermBlocked:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4
    .parameter "num_lock_type"
    .parameter "lockType"
    .parameter "lockKey"
    .parameter "numRetry"

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sput p1, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    .line 58
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    .line 59
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    .line 60
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    .line 61
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lock_key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", numRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 64
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 121
    :goto_0
    return-void

    .line 67
    :cond_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 70
    :pswitch_0
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 71
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 72
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT_NEED numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :pswitch_1
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 77
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 78
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :pswitch_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 84
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 85
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 86
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->isPermBlocked:I

    .line 87
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 95
    :cond_1
    :goto_1
    const-string v0, "SimLockInfoResult"

    const-string v1, "Permernet blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_2
    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    .line 90
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 91
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 92
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    goto :goto_1

    .line 99
    :pswitch_3
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 100
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 101
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :pswitch_4
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 107
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 108
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 112
    :pswitch_5
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 113
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 114
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getLockPin2Key()I
    .locals 1

    .prologue
    .line 195
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    return v0
.end method

.method public getLockPinKey()I
    .locals 1

    .prologue
    .line 191
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    return v0
.end method

.method public getPin2Retry()I
    .locals 1

    .prologue
    .line 204
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    return v0
.end method

.method public getPinRetry()I
    .locals 1

    .prologue
    .line 199
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    return v0
.end method

.method public getPuk2Retry()I
    .locals 1

    .prologue
    .line 214
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    return v0
.end method

.method public getPukRetry()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    return v0
.end method

.method public isSimBlocked()I
    .locals 1

    .prologue
    .line 220
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->isPermBlocked:I

    return v0
.end method

.method setLockInfoResult(Lcom/android/internal/telephony/SimLockInfoResult;)V
    .locals 4
    .parameter "simLockInfoResult"

    .prologue
    const/4 v3, 0x0

    .line 125
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    .line 126
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    .line 127
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    .line 128
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    .line 129
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lock_key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", numRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 132
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 187
    :goto_0
    return-void

    .line 135
    :cond_0
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 138
    :pswitch_0
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 139
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 140
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT_NEED numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :pswitch_1
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 145
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 146
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :pswitch_2
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 151
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 152
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 153
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->isPermBlocked:I

    .line 154
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 162
    :cond_1
    :goto_1
    const-string v0, "SimLockInfoResult"

    const-string v1, "Permernet blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :cond_2
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 157
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 158
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 159
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    goto :goto_1

    .line 165
    :pswitch_3
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 166
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 167
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    :pswitch_4
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 173
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 174
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    :pswitch_5
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 179
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 180
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
