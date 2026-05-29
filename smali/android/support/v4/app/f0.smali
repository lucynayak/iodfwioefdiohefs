.class public final Landroid/support/v4/app/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Notification$Builder;

.field public final b:Landroid/support/v4/app/e0;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/e0;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/f0;->c:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/f0;->d:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/support/v4/app/f0;->b:Landroid/support/v4/app/e0;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroid/support/v4/app/e0;->a:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroid/support/v4/app/e0;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v4/app/f0;->a:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroid/support/v4/app/e0;->j:Landroid/app/Notification;

    iget-wide v4, v3, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v3, Landroid/app/Notification;->icon:I

    iget v6, v3, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v3, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v3, Landroid/app/Notification;->ledARGB:I

    iget v6, v3, Landroid/app/Notification;->ledOnMS:I

    iget v7, v3, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v3, Landroid/app/Notification;->defaults:I

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p1, Landroid/support/v4/app/e0;->d:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p1, Landroid/support/v4/app/e0;->e:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p1, Landroid/support/v4/app/e0;->f:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v4, v2, v6}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v7, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroid/support/v4/app/e0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x18

    const-string v6, "android.support.allowGeneratedReplies"

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/d0;

    .line 1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v9, Landroid/app/Notification$Action$Builder;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v9, v7, v2, v2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-lt v8, v5, :cond_5

    invoke-virtual {v9, v7}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    :cond_5
    const-string v5, "android.support.action.semanticAction"

    invoke-virtual {v4, v5, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v5, 0x1c

    if-lt v8, v5, :cond_6

    invoke-virtual {v9, v7}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    :cond_6
    const-string v5, "android.support.action.showsUserInterface"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v9, v4}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    iget-object v4, p0, Landroid/support/v4/app/f0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v9}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_5

    .line 2
    :cond_7
    iget-object v0, p1, Landroid/support/v4/app/e0;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    iget-object v4, p0, Landroid/support/v4/app/f0;->d:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/f0;->a:Landroid/app/Notification$Builder;

    iget-boolean v4, p1, Landroid/support/v4/app/e0;->g:Z

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroid/support/v4/app/f0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroid/support/v4/app/f0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, p1, Landroid/support/v4/app/e0;->i:I

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v3, v3, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v4, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroid/support/v4/app/e0;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/app/f0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_6

    :cond_9
    iget-object v0, p1, Landroid/support/v4/app/e0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 3
    iget-object v0, p1, Landroid/support/v4/app/e0;->h:Landroid/os/Bundle;

    if-nez v0, :cond_a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/support/v4/app/e0;->h:Landroid/os/Bundle;

    :cond_a
    iget-object v0, p1, Landroid/support/v4/app/e0;->h:Landroid/os/Bundle;

    const-string v3, "android.car.EXTENSIONS"

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_b
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x0

    :goto_7
    iget-object v9, p1, Landroid/support/v4/app/e0;->c:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Landroid/support/v4/app/e0;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/d0;

    sget-object v11, Landroid/support/v4/app/g0;->a:Ljava/lang/Object;

    .line 5
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "icon"

    invoke-virtual {v11, v10, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "title"

    invoke-virtual {v11, v10, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v10, "actionIntent"

    invoke-virtual {v11, v10, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "extras"

    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v10, "remoteInputs"

    invoke-virtual {v11, v10, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v10, "showsUserInterface"

    invoke-virtual {v11, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "semanticAction"

    invoke-virtual {v11, v10, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_c
    const-string v6, "invisible_actions"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    iget-object v4, p1, Landroid/support/v4/app/e0;->h:Landroid/os/Bundle;

    if-nez v4, :cond_d

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p1, Landroid/support/v4/app/e0;->h:Landroid/os/Bundle;

    :cond_d
    iget-object v4, p1, Landroid/support/v4/app/e0;->h:Landroid/os/Bundle;

    .line 8
    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v4, p0, Landroid/support/v4/app/f0;->d:Landroid/os/Bundle;

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_f

    iget-object v3, p0, Landroid/support/v4/app/f0;->a:Landroid/app/Notification$Builder;

    iget-object p1, p1, Landroid/support/v4/app/e0;->h:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_f
    if-lt v0, v1, :cond_10

    iget-object p1, p0, Landroid/support/v4/app/f0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Landroid/support/v4/app/f0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v7, v7, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_10
    return-void
.end method
