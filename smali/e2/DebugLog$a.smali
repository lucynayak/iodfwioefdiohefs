.class public final Le2/DebugLog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# implements
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/DebugLog$a;->a:Landroid/app/Activity;

    iput-object p2, p0, Le2/DebugLog$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Le2/DebugLog$a;->a:Landroid/app/Activity;

    iget-object v1, p0, Le2/DebugLog$a;->b:Ljava/lang/String;

    if-eqz v0, :skip

    if-eqz v1, :skip

    :try_start_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :skip
    return-void
.end method
