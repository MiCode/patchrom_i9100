.class Lcom/android/internal/telephony/cat/LanguageNotificationParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mInitialLanguage:Z

.field mLanguage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/lang/String;Z)V
    .locals 0
    .parameter "cmdDet"
    .parameter "language"
    .parameter "initialLanguage"

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 330
    iput-object p2, p0, Lcom/android/internal/telephony/cat/LanguageNotificationParams;->mLanguage:Ljava/lang/String;

    .line 331
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/LanguageNotificationParams;->mInitialLanguage:Z

    .line 332
    return-void
.end method
