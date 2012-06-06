.class abstract Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;
.super Ljava/lang/Object;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-boolean v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 137
    iput-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 139
    iput-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 145
    iput-boolean v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x5

    .line 249
    iget-boolean v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_0

    .line 265
    :goto_0
    return v0

    .line 259
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 261
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 263
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 197
    iget-boolean v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 198
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 216
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 220
    iget-boolean v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 221
    const-string v1, "PowerSavingModeWidgetProvider"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    const-string v1, "PowerSavingModeWidgetProvider"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    :goto_1
    iput-boolean v4, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 232
    :cond_1
    return-void

    .line 200
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 201
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 204
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 205
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 208
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 209
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 212
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 213
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 226
    iput-boolean v5, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 227
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 154
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 155
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_0

    .line 168
    :pswitch_0
    const-string v3, "PowerSavingModeWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toggleState() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 172
    iget-boolean v3, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v3, :cond_2

    .line 177
    iput-boolean v2, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 182
    :goto_1
    return-void

    .line 157
    :pswitch_1
    const/4 v1, 0x0

    .line 158
    goto :goto_0

    .line 160
    :pswitch_2
    const/4 v1, 0x1

    .line 161
    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v3, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 179
    :cond_2
    iput-boolean v2, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->mInTransition:Z

    .line 180
    invoke-virtual {p0, p1, v1}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
