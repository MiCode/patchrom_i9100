.class Lcom/android/server/AppWidgetServiceImpl$Provider;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Provider"
.end annotation


# instance fields
.field broadcast:Landroid/app/PendingIntent;

.field info:Landroid/appwidget/AppWidgetProviderInfo;

.field instances:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;",
            ">;"
        }
    .end annotation
.end field

.field tag:I

.field uid:I

.field zombie:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    return-void
.end method
