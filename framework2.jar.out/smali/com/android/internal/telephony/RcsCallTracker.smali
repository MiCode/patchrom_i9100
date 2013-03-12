.class public Lcom/android/internal/telephony/RcsCallTracker;
.super Landroid/os/Handler;
.source "RcsCallTracker.java"


# static fields
.field static final ACTIVE:I = 0x2

.field public static final CALL_CONNECTED:I = 0x2

.field public static final CALL_DISCONECTED:I = 0x1

.field public static final CALL_HOLD:I = 0x3

.field public static final CALL_RESUMED:I = 0x4

.field public static final CALL_STATE_BROADCAST:Ljava/lang/String; = "com.samsung.rcs.CALL_STATE_CHANGED"

.field static final DISCONECTED:I = 0x4

.field static final EVENT_CALL_STATE_CHANGED:I = 0x1

.field static final EVENT_SERVICE_STATE_CHANGED:I = 0x2

.field public static final EXTRA_CALL_EVENT:Ljava/lang/String; = "EXTRA_CALL_EVENT"

.field public static final EXTRA_IS_INCOMING:Ljava/lang/String; = "EXTRA_IS_INCOMING"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "EXTRA_NETWORK_TYPE"

.field public static final EXTRA_SERVICE_STATE:Ljava/lang/String; = "EXTRA_SERVICE_STATE"

.field public static final EXTRA_TEL_NUMBER:Ljava/lang/String; = "EXTRA_TEL_NUMBER"

.field static final HOLD:I = 0x3

.field static final NEW:I = 0x1

.field static final PERMISSION:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field public static final SERVICE_STATE_BROADCAST:Ljava/lang/String; = "com.samsung.rcs.SERVICE_STATE_CHANGED"

.field static final TAG:Ljava/lang/String; = "RcsCallTracker"


# instance fields
.field availableConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field mActiveConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mHoldConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    .line 95
    const-string v0, "RcsCallTracker"

    const-string v1, "Created"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 97
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method private analizeAndSendEvents()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v9, 0x2

    .line 144
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 145
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    const/4 v4, 0x0

    .line 147
    .local v4, ic:Lcom/android/internal/telephony/Connection;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #ic:Lcom/android/internal/telephony/Connection;
    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 150
    .restart local v4       #ic:Lcom/android/internal/telephony/Connection;
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 153
    invoke-direct {p0, v9, v7, v4}, Lcom/android/internal/telephony/RcsCallTracker;->notifyTransition(IILcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 159
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #ic:Lcom/android/internal/telephony/Connection;
    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 163
    .restart local v4       #ic:Lcom/android/internal/telephony/Connection;
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 166
    const/4 v6, 0x3

    invoke-direct {p0, v6, v7, v4}, Lcom/android/internal/telephony/RcsCallTracker;->notifyTransition(IILcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 170
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 172
    .local v0, c:Lcom/android/internal/telephony/Connection;
    const/4 v5, 0x0

    .line 173
    .local v5, src:I
    const/4 v1, 0x0

    .line 175
    .local v1, dest:I
    const-string v6, "RcsCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connection state  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 180
    const/4 v5, 0x2

    .line 192
    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v6

    if-nez v6, :cond_8

    .line 194
    const/4 v1, 0x4

    .line 208
    :cond_4
    :goto_4
    if-ne v1, v5, :cond_a

    if-ne v1, v9, :cond_5

    if-eq v5, v9, :cond_a

    .line 210
    :cond_5
    const-string v6, "RcsCallTracker"

    const-string v7, "Dual notification from modem... skipping notification"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 182
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 184
    const/4 v5, 0x3

    goto :goto_3

    .line 188
    :cond_7
    const/4 v5, 0x1

    goto :goto_3

    .line 196
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_9

    .line 198
    const/4 v1, 0x3

    goto :goto_4

    .line 199
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_4

    .line 201
    const/4 v1, 0x2

    goto :goto_4

    .line 214
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 217
    packed-switch v1, :pswitch_data_0

    .line 231
    :goto_5
    invoke-direct {p0, v5, v1, v0}, Lcom/android/internal/telephony/RcsCallTracker;->notifyTransition(IILcom/android/internal/telephony/Connection;)V

    goto :goto_2

    .line 219
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 223
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 234
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #dest:I
    .end local v5           #src:I
    :cond_b
    return-void

    .line 217
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNetworkType(Landroid/telephony/ServiceState;)I
    .locals 2
    .parameter "ss"

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 341
    .local v0, radiotech:I
    packed-switch v0, :pswitch_data_0

    .line 374
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 343
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 346
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 349
    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 352
    :pswitch_3
    const/16 v1, 0x8

    goto :goto_0

    .line 355
    :pswitch_4
    const/16 v1, 0x9

    goto :goto_0

    .line 358
    :pswitch_5
    const/16 v1, 0xa

    goto :goto_0

    .line 362
    :pswitch_6
    const/4 v1, 0x4

    goto :goto_0

    .line 365
    :pswitch_7
    const/4 v1, 0x7

    goto :goto_0

    .line 368
    :pswitch_8
    const/4 v1, 0x5

    goto :goto_0

    .line 371
    :pswitch_9
    const/4 v1, 0x6

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private notifyTransition(IILcom/android/internal/telephony/Connection;)V
    .locals 7
    .parameter "src"
    .parameter "dest"
    .parameter "c"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 241
    if-ne p1, p2, :cond_1

    if-ne p2, v3, :cond_0

    if-eq p1, v3, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, i:Landroid/content/Intent;
    const-string v1, "EXTRA_IS_INCOMING"

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    const-string v1, "EXTRA_TEL_NUMBER"

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    if-ne p2, v5, :cond_2

    .line 254
    const-string v1, "EXTRA_CALL_EVENT"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_2
    if-ne p2, v4, :cond_3

    .line 261
    const-string v1, "EXTRA_CALL_EVENT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_3
    if-ne p2, v3, :cond_4

    if-ne p1, v6, :cond_4

    .line 268
    const-string v1, "EXTRA_CALL_EVENT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_4
    if-ne p2, v3, :cond_5

    if-ne p1, v4, :cond_5

    .line 275
    const-string v1, "EXTRA_CALL_EVENT"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_5
    if-ne p2, v3, :cond_0

    if-ne p1, v3, :cond_0

    .line 284
    const-string v1, "EXTRA_CALL_EVENT"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    const-string v1, "RcsCallTracker"

    const-string v2, "dest == ACTIVE && src == ACTIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeDisconnected()V
    .locals 5

    .prologue
    .line 294
    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 297
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 299
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, i:Landroid/content/Intent;
    const-string v3, "EXTRA_CALL_EVENT"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    const-string v3, "EXTRA_IS_INCOMING"

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    const-string v3, "EXTRA_TEL_NUMBER"

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method addNewConnections()V
    .locals 5

    .prologue
    .line 311
    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 314
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 317
    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v1, i:Landroid/content/Intent;
    const-string v3, "EXTRA_CALL_EVENT"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    const-string v3, "EXTRA_IS_INCOMING"

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    const-string v3, "EXTRA_TEL_NUMBER"

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected dispose()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 335
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 116
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 121
    iget-object v2, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 122
    iget-object v2, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v2, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 124
    invoke-direct {p0}, Lcom/android/internal/telephony/RcsCallTracker;->analizeAndSendEvents()V

    goto :goto_0

    .line 128
    :pswitch_1
    const-string v2, "RcsCallTracker"

    const-string v3, "Service state changed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 131
    .local v1, ss:Landroid/telephony/ServiceState;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    const-string v2, "com.samsung.rcs.SERVICE_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v0       #i:Landroid/content/Intent;
    const-string v2, "EXTRA_SERVICE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    const-string v2, "EXTRA_NETWORK_TYPE"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RcsCallTracker;->getNetworkType(Landroid/telephony/ServiceState;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    iget-object v2, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 135
    const-string v2, "RcsCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
