.class public Lcom/android/internal/telephony/cat/CatBIPResponseMessage;
.super Ljava/lang/Object;
.source "CatBIPResponseMessage.java"


# instance fields
.field AdditionalInfo:I

.field data:Lcom/android/internal/telephony/cat/ResponseData;

.field hasAdditionalInfo:Z

.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field resCode:Lcom/android/internal/telephony/cat/ResultCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 0
    .parameter "cmd"
    .parameter "r"
    .parameter "AddInfoPresent"
    .parameter "AddInfo"
    .parameter "d"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 50
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 51
    iput p4, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 52
    iput-object p5, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 55
    return-void
.end method
