
designer-handbook:
	./bin/dita -i ./plugins/org.sample.base/sample/sample-topic.dita -f designer-handbook

designer-handbook-ru:
	./bin/dita -i ./plugins/org.sample.base/sample/sample-topic.dita -f designer-handbook --default.language=ru

designer-handbook-v2:
	./bin/dita -i ./plugins/org.sample.base/sample/sample-topic.dita -f designer-handbook-v2

designer-handbook-v2-ru:
	./bin/dita -i ./plugins/org.sample.base/sample/sample-topic.dita -f designer-handbook-v2 --default.language=ru

user-manual:
	./bin/dita -i ./plugins/org.sample.base/sample/sample-topic.dita -f user-manual

user-manual-ru:
	./bin/dita -i ./plugins/org.sample.base/sample/sample-topic.dita -f user-manual --default.language=ru
