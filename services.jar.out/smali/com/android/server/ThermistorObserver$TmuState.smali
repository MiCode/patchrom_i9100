.class Lcom/android/server/ThermistorObserver$TmuState;
.super Ljava/lang/Object;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermistorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TmuState"
.end annotation


# static fields
.field private static final FIRST_THROTTLING:I = 0x1

.field private static final SECOND_THROTTLING:I = 0x2

.field private static final TRIPPING:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermistorObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/ThermistorObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/ThermistorObserver$TmuState;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
