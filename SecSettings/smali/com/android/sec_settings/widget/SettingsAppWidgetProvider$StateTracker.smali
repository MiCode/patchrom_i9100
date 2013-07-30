.class abstract Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;
.super Ljava/lang/Object;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/widget/SettingsAppWidgetProvider;
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

    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-boolean v0, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 137
    iput-object v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 138
    iput-object v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 144
    iput-boolean v0, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public abstract getButtonId()I
.end method

.method public abstract getButtonImageId(Z)I
.end method

.method public abstract getIndicatorId()I
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x5

    .line 318
    iget-boolean v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_0

    .line 334
    :goto_0
    return v0

    .line 328
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 330
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 332
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

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
    .locals 5
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 267
    iget-boolean v0, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 268
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 287
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 288
    iget-boolean v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 289
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    :goto_1
    iput-boolean v3, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 300
    :cond_1
    return-void

    .line 270
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 271
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 274
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 275
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 278
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 279
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 282
    :pswitch_3
    iput-boolean v4, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 283
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 293
    :cond_2
    iget-object v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 294
    iput-boolean v4, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 295
    iget-object v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 6
    .parameter "context"
    .parameter "views"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonId()I

    move-result v0

    .line 223
    .local v0, buttonId:I
    invoke-virtual {p0}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->getIndicatorId()I

    move-result v1

    .line 224
    .local v1, indicatorId:I
    invoke-virtual {p0}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->getPosition()I

    move-result v2

    .line 225
    .local v2, pos:I
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 253
    :goto_0
    :pswitch_0
    return-void

    .line 227
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 228
    invoke-static {}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider;->access$500()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 232
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 233
    invoke-static {}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider;->access$600()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 242
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    invoke-virtual {p0, v5}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 244
    invoke-static {}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider;->access$700()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 248
    invoke-static {}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider;->access$500()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    :try_start_0
    invoke-static {}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider;->access$400()Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    .line 157
    const-string v2, "restriction_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v2

    invoke-static {v2}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider;->access$402(Landroid/app/enterprise/IRestrictionPolicy;)Landroid/app/enterprise/IRestrictionPolicy;

    .line 159
    :cond_0
    invoke-static {}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider;->access$400()Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    const v2, 0x10401f4

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v2

    .line 164
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 168
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    .line 170
    packed-switch v2, :pswitch_data_0

    .line 183
    :cond_2
    :goto_1
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 184
    iget-boolean v2, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v2, :cond_3

    .line 189
    iput-boolean v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 176
    goto :goto_1

    .line 178
    :pswitch_2
    iget-object v2, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 179
    iget-object v2, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_1

    .line 191
    :cond_3
    iput-boolean v1, p0, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 192
    invoke-virtual {p0, p1, v0}, Lcom/android/sec_settings/widget/SettingsAppWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
