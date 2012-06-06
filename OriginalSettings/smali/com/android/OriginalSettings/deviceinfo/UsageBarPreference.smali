.class public Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;
.super Landroid/preference/Preference;
.source "UsageBarPreference.java"


# instance fields
.field private mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

.field private final mEntries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/Collection;

    .line 44
    const v0, 0x7f040071

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/Collection;

    .line 49
    const v0, 0x7f040071

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/Collection;

    .line 39
    const v0, 0x7f040071

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public addEntry(FI)V
    .locals 2
    .parameter "percentage"
    .parameter "color"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/Collection;

    invoke-static {p1, p2}, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->createEntry(FI)Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 73
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->invalidate()V

    .line 69
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 60
    const v0, 0x7f080155

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    .line 62
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->setEntries(Ljava/util/Collection;)V

    .line 63
    return-void
.end method
