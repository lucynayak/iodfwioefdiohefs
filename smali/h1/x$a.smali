.class public final Lh1/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/u$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh1/x;->l(Ljava/lang/String;Lh1/x$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lh1/x$d;


# direct methods
.method public constructor <init>(Lh1/x$d;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lh1/x$a;->b:Lh1/x$d;

    iput-object p2, p0, Lh1/x$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le1/y;)V
    .registers 5

    .line 1
    iget-object v0, p1, Le1/y;->b:Le1/o;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lh1/x$a;->b:Lh1/x$d;

    .line 3
    iget-object v0, v0, Le1/o;->h:Le1/m;

    .line 4
    invoke-interface {p1, v0}, Lh1/x$d;->a(Le1/m;)V

    return-void

    :cond_0
    iget-object v0, p0, Lh1/x$a;->a:Ljava/lang/String;

    .line 5
    iget-object v1, p1, Le1/y;->c:Lorg/json/JSONObject;

    .line 6
    sget-object v2, Lh1/u;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lh1/x$a;->b:Lh1/x$d;

    .line 8
    iget-object p1, p1, Le1/y;->c:Lorg/json/JSONObject;

    .line 9
    invoke-interface {v0, p1}, Lh1/x$d;->b(Lorg/json/JSONObject;)V

    return-void
.end method
