.class public final enum Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;
.super Ljava/lang/Enum;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "O2Paystate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

.field public static final enum NOT_READY:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

.field public static final enum O2_PostPay:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

.field public static final enum O2_PrePay:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->NOT_READY:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    .line 186
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    const-string v1, "O2_PrePay"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->O2_PrePay:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    .line 187
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    const-string v1, "O2_PostPay"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->O2_PostPay:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    .line 184
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->NOT_READY:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->O2_PrePay:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->O2_PostPay:Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->$VALUES:[Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 192
    iput p3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->mValue:I

    .line 193
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;
    .locals 1
    .parameter "name"

    .prologue
    .line 184
    const-class v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->$VALUES:[Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords$O2Paystate;->mValue:I

    return v0
.end method
