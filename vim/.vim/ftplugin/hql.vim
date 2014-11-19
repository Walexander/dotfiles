let b:vimpipe_command="ssh $HIVE_HOST -l $HIVE_USER \"hive -i ~/.hive-conf.hql -S -f /dev/fd/0\""
set makeprg="ssh $HIVE_HOST -l $HIVE_USER \"hive -i ~/.hive-conf.hql -S -f /dev/fd/0\""
:set syntax=sql
