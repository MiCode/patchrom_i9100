.class public Lcom/android/internal/policy/impl/sec/CircleMissedEventData;
.super Ljava/lang/Object;
.source "CircleMissedEventData.java"


# instance fields
.field public content:Ljava/lang/String;

.field public date:J

.field public name:Ljava/lang/String;

.field public threadId:J

.field public tickerText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter "sName"
    .parameter "lDate"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->name:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->date:J

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 0
    .parameter "sName"
    .parameter "cTickerText"
    .parameter "lDate"
    .parameter "lThreadId"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->name:Ljava/lang/String;

    .line 40
    iput-wide p3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->date:J

    .line 41
    iput-wide p5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->threadId:J

    .line 42
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->tickerText:Ljava/lang/CharSequence;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "sName"
    .parameter "sContent"
    .parameter "lDate"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->name:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->content:Ljava/lang/String;

    .line 30
    iput-wide p3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->date:J

    .line 31
    return-void
.end method
