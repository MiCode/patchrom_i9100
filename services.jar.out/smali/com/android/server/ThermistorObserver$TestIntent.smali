.class Lcom/android/server/ThermistorObserver$TestIntent;
.super Ljava/lang/Object;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermistorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestIntent"
.end annotation


# static fields
.field private static final ACTION_FROM_THERMISTOR_OBSERVER:Ljava/lang/String; = "TO.ACTION_FROM_THERMISTOR_OBSERVER"

.field private static final ACTION_FROM_THERMISTOR_TESTAPP:Ljava/lang/String; = "TO.ACTION_FROM_THERMISTOR_TESTAPP"

.field private static final EXTRA_SET_CONTROL_TEMPERATURE:Ljava/lang/String; = "TO.TestIntent.CONTROL.SET.TEMPERATURE"

.field private static final EXTRA_SET_CONTROL_TIME:Ljava/lang/String; = "TO.TestIntent.SET.CONTROL.TIME"

.field private static final EXTRA_SET_STOP_TEMPERATURE:Ljava/lang/String; = "TO.TestIntent.STOP.TEMPERATURE"

.field private static final EXTRA_SHOW_BOOL_PENDING:Ljava/lang/String; = "TO.TestIntent.SHOW.BOOL_PENDING"

.field private static final EXTRA_SHOW_CONTROL_GOAL_TIME:Ljava/lang/String; = "TO.TestIntent.SHOW.GOAL_TIME"

.field private static final EXTRA_SHOW_CONTROL_TEMPERATURE:Ljava/lang/String; = "TO.TestIntent.SHOW.TEMPERATURE"

.field private static final EXTRA_SHOW_CONTROL_TIME:Ljava/lang/String; = "TO.TestIntent.SHOW.TIME"

.field private static final EXTRA_SHOW_CURRENT_STATE:Ljava/lang/String; = "TO.TestIntent.SHOW.CURRENT.STATE"

.field private static final EXTRA_SHOW_CURRENT_TEMPERATURE:Ljava/lang/String; = "TO.TestIntent.SHOW.CURRENT.TEMPERATURE"

.field private static final EXTRA_SHOW_STOP_TEMPERATURE:Ljava/lang/String; = "TO.TestIntent.SHOW.STOP.TEMPERATURE"


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermistorObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/ThermistorObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/ThermistorObserver$TestIntent;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
