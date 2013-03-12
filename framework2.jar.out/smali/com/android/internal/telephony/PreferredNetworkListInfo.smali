.class public Lcom/android/internal/telephony/PreferredNetworkListInfo;
.super Ljava/lang/Object;
.source "PreferredNetworkListInfo.java"


# instance fields
.field public mGsmAct:I

.field public mGsmCompactAct:I

.field public mIndex:I

.field public mMode:I

.field public mOperator:Ljava/lang/String;

.field public mPlmn:Ljava/lang/String;

.field public mUtranAct:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    .line 41
    iput v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    .line 42
    iput v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    .line 43
    iput v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    .line 44
    iput v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .parameter "index"
    .parameter "operator"
    .parameter "plmn"
    .parameter "gsmact"
    .parameter "gsmcompactact"
    .parameter "utranact"
    .parameter "mode"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    .line 55
    iput-object p2, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    .line 57
    iput p4, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    .line 58
    iput p5, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    .line 59
    iput p6, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    .line 60
    iput p7, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PreferredNetworkListInfo;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkListInfo;->copyFrom(Lcom/android/internal/telephony/PreferredNetworkListInfo;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/android/internal/telephony/PreferredNetworkListInfo;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 75
    iget v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    .line 76
    iget-object v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    .line 78
    iget v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    .line 79
    iget v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    .line 80
    iget v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    .line 81
    iget v0, p1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    iput v0, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferredNetworkListInfo: { index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gsmAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gsmCompactAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", utranAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
