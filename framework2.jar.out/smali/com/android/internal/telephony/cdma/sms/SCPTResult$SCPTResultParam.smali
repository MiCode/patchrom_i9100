.class public Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;
.super Ljava/lang/Object;
.source "SCPTResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/sms/SCPTResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCPTResultParam"
.end annotation


# instance fields
.field public category:I

.field public categoryResult:I

.field public language:I

.field public reserved:I

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/sms/SCPTResult;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/sms/SCPTResult;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;->this$0:Lcom/android/internal/telephony/cdma/sms/SCPTResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;->category:I

    .line 34
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;->language:I

    .line 35
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;->categoryResult:I

    .line 36
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;->reserved:I

    .line 37
    return-void
.end method
