.class public Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
.super Ljava/lang/Exception;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceMailNumberMissingException"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1710
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 1711
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1714
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1715
    return-void
.end method
