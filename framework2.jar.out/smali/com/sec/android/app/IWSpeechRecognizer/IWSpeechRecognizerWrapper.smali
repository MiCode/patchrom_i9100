.class public Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;
.super Ljava/lang/Object;
.source "IWSpeechRecognizerWrapper.java"


# static fields
.field private static uniqueInstance:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;
    .locals 2

    .prologue
    .line 10
    const-class v1, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->uniqueInstance:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-nez v0, :cond_0

    .line 12
    invoke-static {}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->init()V

    .line 13
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;-><init>()V

    sput-object v0, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->uniqueInstance:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    .line 15
    :cond_0
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->uniqueInstance:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
