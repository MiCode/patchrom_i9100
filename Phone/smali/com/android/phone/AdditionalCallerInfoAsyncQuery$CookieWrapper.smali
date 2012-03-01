.class final Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;
.super Ljava/lang/Object;
.source "AdditionalCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AdditionalCallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CookieWrapper"
.end annotation


# instance fields
.field public contactID:J

.field public listener:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;-><init>()V

    return-void
.end method
