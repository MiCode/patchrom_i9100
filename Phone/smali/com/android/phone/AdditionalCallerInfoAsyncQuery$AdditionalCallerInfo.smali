.class public final Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;
.super Ljava/lang/Object;
.source "AdditionalCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AdditionalCallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdditionalCallerInfo"
.end annotation


# instance fields
.field public mAccountName:Ljava/lang/String;

.field public mAccountType:Ljava/lang/String;

.field public mIsBirthDay:Z

.field public mRemainedDaysUntilBirthday:J

.field public mSNSDisplayIcon:Landroid/graphics/drawable/Drawable;

.field public mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    return-void
.end method
