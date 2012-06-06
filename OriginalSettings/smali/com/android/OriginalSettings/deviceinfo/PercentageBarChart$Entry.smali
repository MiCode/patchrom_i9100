.class public Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;
.super Ljava/lang/Object;
.source "PercentageBarChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public final paint:Landroid/graphics/Paint;

.field public final percentage:F


# direct methods
.method protected constructor <init>(FLandroid/graphics/Paint;)V
    .locals 0
    .parameter "percentage"
    .parameter "paint"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    .line 47
    iput-object p2, p0, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    .line 48
    return-void
.end method
