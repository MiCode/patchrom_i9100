.class public Lcom/sec/android/app/CscFeature;
.super Ljava/lang/Object;
.source "CscFeature.java"


# static fields
.field public static final BOOLEAN_TEST:Z = true

.field public static final INT_TEST:I = 0xa

.field public static final STRING_TEST:Ljava/lang/String; = "String_Test"

.field private static sInstance:Lcom/sec/android/app/CscFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/CscFeature;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/sec/android/app/CscFeature;

    invoke-direct {v0}, Lcom/sec/android/app/CscFeature;-><init>()V

    sput-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    .line 37
    :cond_0
    sget-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    return-object v0
.end method


# virtual methods
.method public getEnableStatus(Z)Z
    .locals 0
    .parameter "tag"

    .prologue
    .line 41
    return p1
.end method

.method public getInteger(I)I
    .locals 0
    .parameter "tag"

    .prologue
    .line 49
    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "tag"

    .prologue
    .line 45
    return-object p1
.end method
